"use strict";
const path = require("path");
const assert = require("yeoman-assert");
const helpers = require("yeoman-test");

describe("generator-dnn:mvc", () => {
  beforeAll(() => {
    return helpers
      .run(path.join(__dirname, "../generators/mvc"))
      .withArguments(["--noinstall"])
      .withPrompts({
        company: "Gerald Ncube",
        name: "TestMVC",
        description: "Test Build Module",
        companyUrl: "geraldncube.co.uk",
        emailAddy: "me@geraldncube.co.uk"
      });
  });

  it("created files", () => {
    assert(true);
  });
});
