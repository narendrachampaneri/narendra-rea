package com.amazon.insights.validate;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ValidatorChain {
    private final List<Validator> validators;

    public static class Builder {
        private final List<Validator> validators = new ArrayList();

        public List<Validator> getValidators() {
            return this.validators;
        }

        public Builder withValidator(Validator validator) {
            this.validators.add(validator);
            return this;
        }

        public ValidatorChain build() {
            return new ValidatorChain(this);
        }
    }

    private ValidatorChain(Builder builder) {
        this.validators = new ArrayList(builder.getValidators());
    }

    public List<ValidationError> runValidation() {
        final List<ValidationError> validationErrors = new ArrayList<>();
        Errors errors = new Errors() { // from class: com.amazon.insights.validate.ValidatorChain.1
            @Override // com.amazon.insights.validate.Errors
            public void reject(String message) {
                validationErrors.add(new ValidationError(message));
            }

            @Override // com.amazon.insights.validate.Errors
            public void reject(String message, Exception e) {
                validationErrors.add(new ValidationError(message, e));
            }
        };
        for (Validator v : this.validators) {
            v.validate(errors);
        }
        return validationErrors;
    }
}
