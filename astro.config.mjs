import { defineConfig } from 'astro/config';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://drawing-to-cad-studio.zexuanzjb.chatgpt.site',
  output: 'static',
  srcDir: './site-src',
  publicDir: './site-public',
  integrations: [sitemap()],
});
