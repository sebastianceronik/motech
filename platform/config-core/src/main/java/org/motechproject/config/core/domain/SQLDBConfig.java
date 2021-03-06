package org.motechproject.config.core.domain;

import org.apache.commons.lang.StringUtils;
import org.motechproject.config.core.MotechConfigurationException;

/**
 * This class encapsulates the SQL database configuration, composed of as db url, username and password.
 */
public class SQLDBConfig extends AbstractDBConfig {

    /**
     * Constructor.
     *
     * @param url  the URL to the database
     * @param driver  the driver class name for the database
     * @param username  the username for the database
     * @param password  the password for the database
     * @throws org.motechproject.config.core.MotechConfigurationException if given url is invalid.
     */
    public SQLDBConfig(String url, String driver, String username, String password) {
        super(url, driver, username, password);
        validate();
    }

    private void validate() {
        if (StringUtils.isBlank(getUrl())) {
            throw new MotechConfigurationException("Motech SQL URL cannot be null or empty.");
        }

        if (StringUtils.isBlank(getDriver())) {
            throw new MotechConfigurationException("Motech SQL Driver cannot be null or empty.");
        }

        if (!getUrl().matches("jdbc:(\\w+:)+//([-\\w+\\.])*\\w+:\\d+/")) {
            throw new MotechConfigurationException("Motech SQL URL is invalid.");
        }
    }
}
