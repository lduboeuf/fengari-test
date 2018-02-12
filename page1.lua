local js = require "js"
local window = js.global
local document = window.document

local M = require "page2"


local t = document:getElementById('tt')
t.value = "oulala"

local btn = document:getElementById('kikou')
btn.onclick = function (e)
    local p = document:createElement('p')
    p.innerHTML = t.value
    document.body:appendChild(p)
end

local p = document:createElement("p")
document.body:appendChild(p);

local data = { 
    name = "kikou",
    todos = {"kikou1", "kikou2"}
}


local _title = document:createElement('h1')
_title.innerHTML = data["name"]
document.body:appendChild(_title)


M.bar()