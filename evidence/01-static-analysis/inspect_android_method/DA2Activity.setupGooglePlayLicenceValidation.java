    private void setupGooglePlayLicenceValidation() {
        if (nativeIsPlatformAmazon()) {
            m_hasPassedRLC = true;
            return;
        }
        this.mGooglePlayLicenseCheckerCallback = new AppsomniacsGooglePlayLicenseCheckerCallback();
        this.mGooglePlayLicenceChecker = new LicenseChecker(this, new ServerManagedPolicy(this, new AESObfuscator(SALT, getPackageName(), ANDROID_ID)), "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAh2KG+zjczjQ/Gk7L7ZI3jPMQb98BGQ1kEqJksQBVroQYuS3jXe1AotSlIli3EDh37Fb+RrePQqTDXWkQ7IF7cc9ml/4LJFW/sf5Eghk6LGJPsKNmNbHivlwj3oNsjraE3CO9ZP4nvQPeDhJMjvZQnNAWc2cgu7KWxyTqIJu+EMvROwS3bwn/goXmFmhNK4dFtA7h6fFPqb6doKVEgyD9uR7xxnit7aUhzbvQWrX3ErnXJJ+qpcSKZEUMfeLWxuSA5FTk5DPaSoBkzvvU3VY8PL8iDCpCGW4zOgMpF9XZ8sjUZix5U7t2Eg2psL5VDADSx3Tk2eIdMl+R7qyYbQvDAQIDAQAB");
        this.mGooglePlayLicenceChecker.checkAccess(this.mGooglePlayLicenseCheckerCallback);
        m_hasPassedRLC = true;
    }