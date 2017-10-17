module SampleElements
  CAROUSEL = [
    {
      title: '#1',
      # Horizontal image should have 1.91:1 ratio
      image_url: 'https://picsum.photos/1000/840?image=842',
      subtitle: "Symmetry is one of the ke principles",
      default_action: {
        type: 'web_url',
        url: 'https://unsplash.it'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://unsplash.it',
          title: 'Website'
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
        url: 'https://unsplash.it'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://unsplash.it',
          title: 'Website'
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
        url: 'https://unsplash.it'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://unsplash.it',
          title: 'Website'
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
        url: 'https://unsplash.it'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://unsplash.it',
          title: 'Website'
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
        url: 'https://unsplash.it'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://unsplash.it',
          title: 'Website'
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
        url: 'https://unsplash.it'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://unsplash.it',
          title: 'Website'
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
        url: 'https://unsplash.it'
      },
      buttons: [
        {
          type: :web_url,
          url: 'https://unsplash.it',
          title: 'Website'
        },
        {
          type: :postback,
          title: 'Unsquare Images',
          payload: 'HORIZONTAL_IMAGES'
        }
      ]
    }
  ].freeze

  BUTTON_TEMPLATE_TEXT = "Look, I'm a message and I have " \
                         'some buttons attached!'.freeze
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
