package generator

import (
	"fmt"

	"android/soong/android"
)

func kinesisExpandVariables(ctx android.ModuleContext, in string) string {
	kinesisVars := ctx.Config().VendorConfig("kinesisVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if kinesisVars.IsSet(name) {
			return kinesisVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
