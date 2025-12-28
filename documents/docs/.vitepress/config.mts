import { defineConfig } from 'vitepress'
import { getGuideSideBarItems } from './guide'

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "ANDROID-XIAOZHI",
  description: "android-xiaozhi is a Flutter-based cross-platform Xiaozhi client, supporting iOS, Android, Web, and more.",
  base: '/xiaozhi-android-client/',
  themeConfig: {
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Guide', link: '/guide/00_documentation_index' },
      { text: 'Ecosystem', link: '/ecosystem/' },
      { text: 'Contributing', link: '/contributing' },
      { text: 'Contributors', link: '/contributors' },
      { text: 'Sponsors', link: '/sponsors/' }
    ],

    sidebar: {
      '/guide/': [
        {
          text: 'Guide',
          // Expanded by default
          collapsed: false,
          items: getGuideSideBarItems(),
        }
      ],
      '/ecosystem/': [
        {
          text: 'Ecosystem Overview',
          link: '/ecosystem/'
        },
        {
          text: 'Related Projects',
          collapsed: false,
          items: [
            { text: 'Xiaozhi Python Client', link: '/ecosystem/projects/py-xiaozhi/' },
            { text: 'xiaozhi-esp32-server', link: '/ecosystem/projects/xiaozhi-esp32-server/' }
          ]
        },
        // {
        //   text: 'Resources and Support',
        //   collapsed: true,
        //   items: [
        //     { text: 'Official Extensions & Plugins', link: '/ecosystem/resources/official-extensions/' },
        //     { text: 'Community Contributions', link: '/ecosystem/resources/community-contributions/' },
        //     { text: 'Compatible Devices', link: '/ecosystem/resources/compatible-devices/' }
        //   ]
        // }
      ],
      // No sidebar for sponsors page
      '/sponsors/': [],
      // No sidebar for contributing guide
      '/contributing': [],
      // No sidebar for contributors list
      '/contributors': [],
      // No sidebar for system architecture
      '/architecture/': []
    },

    socialLinks: [
      { icon: 'github', link: 'https://github.com/TOM88812/xiaozhi-android-client' }
    ]
  }
})
