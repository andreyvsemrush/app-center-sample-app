import { type SM } from "@app-center-js-sdk/app-center-js-sdk";

declare global {
  interface Window {
    SM: SM;
  }
}
