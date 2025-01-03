local utils = require("new-file-template.utils")

local function base_template(path, filename)
	local contract_name = vim.split(filename, "%.")[1]
	local solidity_version = vim.g.solc_version or "0.8.14"

	return 
[[
#include <bits/stdc++.h>
using namespace std;
#define fast ios_base::sync_with_stdio(0); cin.tie(0); cout.tie(0);
#define ll long long 
#define ull unsigned long long
#define file freopen("FILENAME.INP","r", stdin); freopen("FILENAME.OUT","w",stdout);

int main(){
    fast;
    |cursor|
}
]]
end

local function helper_template(path, filename) -- just an example
  return "Created a file in " .. path .. " called " .. filename
end

return function(opts)
	local template = {
		{ pattern = "helper/.*", content = helper_template },
		{ pattern = ".*", content = base_template },
	}

	return utils.find_entry(template, opts)
end
