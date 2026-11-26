# Drawing to CAD site source notes

This client-facing site is a customized Astro static build based on the MIT-licensed [ScrewFast](https://github.com/mearashadowfax/ScrewFast) architecture. The original `LICENSE` remains in the repository. `site-src/` holds the customized bilingual pages; `site-public/` holds original LPB-01 drawing, CAD renders, video, and downloads. The unmodified template `src/` is retained as a reference and excluded from this build through `srcDir`.

Run `npm install`, then `npm run dev` for local preview or `npm run build` for a static `dist/` deployment. The site makes no claim that arbitrary blurry drawings can be converted accurately without human review. The inquiry form asks for the client's contact email and opens a prefilled email draft to the service inbox; drawings are attached by the client in their email app and are not uploaded to the site.
