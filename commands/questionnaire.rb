# Showcases a chained sequence of commands that gather the data
# and store it in the answers hash inside the User instance.
module Questionnaire
  # State 'module_function' before any method definitions so
  # commands are mixed into Dispatch classes as private methods.
  module_function

  def create_board
    if @message.quick_reply == 'CREATE_BOARD' || @message.text =~ /yes/i
      say "Great! What do you want to name this board?"
      sleep 1
      say "(type 'Stop' at any point to exit)"
      next_command :handle_name_and_ask_gender
    else
      say "No problem! Let's do it later"
      stop_thread
    end
  end

  def handle_name_and_ask_gender
    # Fallback functionality if stop word used or user input is not text
    fall_back && return
    @user.answers[:name] = @message.text
    replies = UI::QuickReplies.build(%w[Yes YES], %w[No NO])
    say "Your board is ready to be pinned with new content, do you want to begin?", quick_replies: replies
    next_command :handle_gender_and_ask_age
  end

  def handle_gender_and_ask_age
    fall_back && return
    @user.answers[:gender] = @message.text
    replies = UI::QuickReplies.build(%w[Okay OKAY])
    say 'Alright, you can access the persistent menu to start pinning.', quick_replies: reply
    next_command :handle_age_and_stop
  end

  def handle_age_and_stop
    fall_back && return
    @user.answers[:age] = if @message.quick_reply == 'NO_AGE'
                            'hidden'
                          else
                            @message.text
                          end
    stop_questionnaire
  end

  def stop_create_board
    stop_thread
    show_results
    @user.answers = {}
  end

  def show_results
    say "OK. Here's what we now about you so far:"
    name = @user.answers.fetch(:name, 'N/A')
    gender = @user.answers.fetch(:gender, 'N/A')
    age = @user.answers.fetch(:age, 'N/A')
    text = "Name: #{name}, " \
           "gender: #{gender}, " \
           "age: #{age}"
    say text
    say 'Thanks for your time!'
  end

  # NOTE: A way to enforce sanity checks (repeat for each sequential command)
  def fall_back
    say 'You tried to fool me, human! Start over!' unless text_message?
    return false unless !text_message? || stop_word_used?('Stop')
    stop_questionnaire
    puts 'Fallback triggered!'
    true # to trigger return from the caller on 'and return'
  end

  # specify stop word
  def stop_word_used?(word)
    !(@message.text =~ /#{word.downcase}/i).nil?
  end
end
