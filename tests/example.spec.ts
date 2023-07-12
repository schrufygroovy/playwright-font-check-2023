import { test, expect } from '@playwright/test';

test('font-example', async ({ page }) => {
  const localDirectory = process.cwd();
  console.log(`Directory is: '${localDirectory}'.`);


  await page.goto(`file://${localDirectory}/font-example.html`);
  await expect(page).toHaveScreenshot();
});
