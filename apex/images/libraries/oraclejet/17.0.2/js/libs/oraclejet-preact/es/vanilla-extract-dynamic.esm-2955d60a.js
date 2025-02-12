/* @oracle/oraclejet-preact: undefined */
function getVarName(variable) {
  var matches = variable.match(/^var\((.*)\)$/);

  if (matches) {
    return matches[1];
  }

  return variable;
}

function get(obj, path) {
  var result = obj;

  for (var key of path) {
    if (!(key in result)) {
      throw new Error("Path ".concat(path.join(' -> '), " does not exist in object"));
    }

    result = result[key];
  }

  return result;
}

function walkObject(obj, fn) {
  var path = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : [];
  var clone = obj.constructor();

  for (var key in obj) {
    var _value = obj[key];
    var currentPath = [...path, key];

    if (typeof _value === 'string' || typeof _value === 'number' || _value == null) {
      clone[key] = fn(_value, currentPath);
    } else if (typeof _value === 'object' && !Array.isArray(_value)) {
      clone[key] = walkObject(_value, fn, currentPath);
    } else {
      console.warn("Skipping invalid key \"".concat(currentPath.join('.'), "\". Should be a string, number, null or object. Received: \"").concat(Array.isArray(_value) ? 'Array' : typeof _value, "\""));
    }
  }

  return clone;
}

function assignInlineVars(varsOrContract, tokens) {
  var styles = {};

  if (typeof tokens === 'object') {
    var _contract = varsOrContract;
    walkObject(tokens, (value, path) => {
      var varName = get(_contract, path);
      styles[getVarName(varName)] = String(value);
    });
  } else {
    var _vars = varsOrContract;

    for (var varName in _vars) {
      styles[getVarName(varName)] = _vars[varName];
    }
  }

  Object.defineProperty(styles, 'toString', {
    value: function value() {
      return Object.keys(this).map(key => "".concat(key, ":").concat(this[key])).join(';');
    },
    writable: false
  });
  return styles;
}

export { assignInlineVars as a };
//# sourceMappingURL=vanilla-extract-dynamic.esm-2955d60a.js.map
