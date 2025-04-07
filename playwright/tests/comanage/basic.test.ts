import { test, expect } from "@playwright/test";

test("login page renders", async ({ page }) => {
  await page.goto("https://comanage.lndo.site");
  await expect(page.locator(".loginMsg")).toBeVisible();
});
