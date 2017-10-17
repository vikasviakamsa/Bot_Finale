module SampleElements
  CAROUSEL = [
    {
      title: '#1',
      # Horizontal image should have 1.91:1 ratio
      image_url: 'https://picsum.photos/1000/840?image=842',
      subtitle: "Symmetry is one of the key principles",
      default_action: {
        type: 'web_url',
        url: 'https://in.pinterest.com/'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://in.pinterest.com/search/pins/?q=symmetry%20in%20architecture&rs=typed&term_meta[]=symmetry%20in%20architecture%7Ctyped',
          title: 'Show similar'
        },
        {
          type: :postback,
          title: 'Square Images',
          payload: 'SQUARE_IMAGES'
        }
      ]
    },
    {
      title: '#2',
      # Horizontal image should have 1.91:1 ratio
      image_url: 'https://picsum.photos/1000/840?image=983',
      subtitle: "Scale can be awestriking",
      default_action: {
        type: 'web_url',
        url: 'https://in.pinterest.com/'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://in.pinterest.com/search/pins/?q=scale%20in%20architecture&rs=typed&term_meta[]=scale%20in%20architecture%7Ctyped',
          title: 'Show similar'
        },
        {
          type: :postback,
          title: 'Square Images',
          payload: 'SQUARE_IMAGES'
        }
      ]
    },
    {
      title: '#3',
      # Horizontal image should have 1.91:1 ratio
      image_url: 'https://picsum.photos/1000/840?image=954',
      subtitle: "Exposing hidden details can impart elegance",
      default_action: {
        type: 'web_url',
        url: 'https://in.pinterest.com/'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://in.pinterest.com/search/pins/?q=architectural%20detailing&rs=typed&term_meta[]=architectural%7Ctyped&term_meta[]=detailing%7Ctyped',
          title: 'Show similar'
        },
        {
          type: :postback,
          title: 'Square Images',
          payload: 'SQUARE_IMAGES'
        }
      ]
    },
    {
      title: '#4',
      # Horizontal image should have 1.91:1 ratio
      image_url: 'https://picsum.photos/1000/840?image=503',
      subtitle: "Embracing materiality can reveal striking qualities",
      default_action: {
        type: 'web_url',
        url: 'https://in.pinterest.com/'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://in.pinterest.com/search/pins/?q=architectural%20materials&rs=typed&term_meta[]=architectural%7Ctyped&term_meta[]=materials%7Ctyped',
          title: 'Show similar'
        },
        {
          type: :postback,
          title: 'Square Images',
          payload: 'SQUARE_IMAGES'
        }
      ]
    },
    {
      title: '#5',
      # Horizontal image should have 1.91:1 ratio
      image_url: 'https://picsum.photos/1000/840?image=444',
      subtitle: "A nice interplay of floor plates",
      default_action: {
        type: 'web_url',
        url: 'https://in.pinterest.com/'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://in.pinterest.com/search/pins/?q=modern%20architecture&rs=typed&term_meta[]=modern%7Ctyped&term_meta[]=architecture%7Ctyped',
          title: 'Show similar'
        },
        {
          type: :postback,
          title: 'Square Images',
          payload: 'SQUARE_IMAGES'
        }
      ]
    },
    {
      title: '#6',
      # Horizontal image should have 1.91:1 ratio
      image_url: 'https://picsum.photos/1000/840?image=322',
      subtitle: "Old is gold, forever",
      default_action: {
        type: 'web_url',
        url: 'https://in.pinterest.com/'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://in.pinterest.com/search/pins/?q=traditional%20architecture&rs=typed&term_meta[]=traditional%7Ctyped&term_meta[]=architecture%7Ctyped',
          title: 'Show similar'
        },
        {
          type: :postback,
          title: 'Square Images',
          payload: 'SQUARE_IMAGES'
        }
      ]
    },
    {
      title: '#7',
      # Horizontal image should have 1.91:1 ratio
      image_url: 'https://picsum.photos/1000/840?image=739',
      subtitle: "Constrast with surrounding context can be a strong element",
      default_action: {
        type: 'web_url',
        url: 'https://in.pinterest.com/'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://in.pinterest.com/search/pins/?q=contrast%20in%20architecture&rs=typed&term_meta[]=contrast%20in%20architecture%7Ctyped',
          title: 'Show similar'
        },
        {
          type: :postback,
          title: 'Unsquare Images',
          payload: 'HORIZONTAL_IMAGES'
        }
      ]
    }
  ].freeze

  BUTTON_TEMPLATE_TEXT = "Wanna checkout some popular stuff?" \
                         "Pick either!".freeze
  BUTTON_TEMPLATE_BUTTONS = [
    {
      type: :web_url,
      url: 'https://medium.com/@progapanda',
      title: "Andy's Medium"
    },
    {
      type: :postback,
      payload: 'BUTTON_TEMPLATE_ACTION',
      title: 'Useful Button'
    }
  ].freeze
end
