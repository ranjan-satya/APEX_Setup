/* @oracle/oraclejet-preact: undefined */
import { colorSchemeVars } from './Common/themes/themeContract.css.js';

// Take a string in the form of "rgb(palette.token.str)" and return the "palette.token.str"
const parsePaletteTokenFromRGB = (rgbStr) => {
    const tokenArg = rgbStr.split('(')[1].split(')')[0];
    return tokenArg ? tokenArg : ''; // return the matched palette token
};
// Take a string in the form of "rgba(palette.token.str,opacity)" and return the token and opacity
const parsePaletteTokenAndOpacityFromRGBA = (rgbaStr) => {
    const tokenArgs = rgbaStr.split('(')[1].split(')')[0];
    const argArray = tokenArgs.split(',');
    // should have two arguments
    if (argArray.length === 2) {
        return [argArray[0], argArray[1]];
    }
    return ['', '']; // return empty string values on no match
};
// This will either return the interpolated token, or the original value if the token isn't found.
// Any colorSchemeVars token can be referenced, but the palette tokens need to be wrapped with rgb(token)
// or rgba(token,opacity).
const tokenInterpolate = (color) => {
    const evaluateToken = (tokenStr) => {
        const tokenKeys = tokenStr.split('.');
        let evaluatedToken = colorSchemeVars;
        tokenKeys.every((key) => {
            if (evaluatedToken && typeof evaluatedToken === 'object' && evaluatedToken[key]) {
                evaluatedToken = evaluatedToken[key];
                return evaluatedToken;
            }
            else {
                evaluatedToken = tokenStr; // bad evaluation, return the original string;
                return false;
            }
        });
        return evaluatedToken;
    };
    let interpolatedColor = color.replace(/\s/g, ''); // remove all whitespace before parsing
    if (interpolatedColor.startsWith('rgb(palette.')) {
        const evaluatedToken = evaluateToken(parsePaletteTokenFromRGB(interpolatedColor));
        if (evaluatedToken) {
            interpolatedColor = `rgb(${evaluatedToken})`;
        }
    }
    else if (interpolatedColor.startsWith('rgba(palette.')) {
        const [token, opacity] = parsePaletteTokenAndOpacityFromRGBA(interpolatedColor);
        const evaluatedToken = evaluateToken(token);
        if (evaluatedToken) {
            interpolatedColor = `rgba(${evaluatedToken},${opacity})`;
        }
    }
    else if (!interpolatedColor.startsWith('palette.') && interpolatedColor.includes('.')) {
        // Don't allow palette tokens without the rbg() or rbga() wrapper.
        interpolatedColor = evaluateToken(interpolatedColor);
    }
    // TWe want to pass the original value through, even if it was an unsuccessfully interploated token.
    // An app developer will be able to see when a specified token is not parsed correctly and can fix
    // any typoes, etc.
    return interpolatedColor;
};
const colorInterpolations = {
    color: ({ color }) => color === undefined
        ? {}
        : {
            color: tokenInterpolate(color)
        },
    backgroundColor: ({ backgroundColor }) => backgroundColor === undefined
        ? {}
        : {
            backgroundColor: tokenInterpolate(backgroundColor)
        }
};

export { colorInterpolations as c };
//# sourceMappingURL=colors-aab9ed12.js.map
