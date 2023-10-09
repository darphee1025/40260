# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
#  Last Modified: Mon Sep 25 12:14:00 2023

import errno
import sphinx.util.osutil
sphinx.util.osutil.ENOENT = errno.ENOENT
sphinx.util.osutil.EPIPE  = errno.EPIPE
sphinx.util.osutil.EINVAL = errno.EINVAL

project = 'jwq40260'
copyright = '2023, dafei.xiao'
author = 'dafei.xiao'
release = '0.0'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
  'sphinxcontrib.console',
  'sphinxcontrib.excel',
  'sphinxcontrib.wavedrom', 
  'sphinx.ext.ifconfig',
  'sphinx.ext.todo',
  'sphinx_verilog_domain',
  'symbolator_sphinx',
  'sphinxcontrib_verilog_diagrams',
  'sphinxcontrib.mermaid',
  'sphinx.ext.graphviz',
  'sphinx.ext.imgconverter',
  'sphinx_hwreg.hardware_registers',
]

# 设置graphviz_dot路径
graphviz_dot = 'dot'
# 设置graphviz_dot_args的参数, 这里设置了默认字体
graphviz_dot_args = ['-Gfontname=Georgia',
                     '-Nfontname=Georgia',
                     '-Efontname=Georgia']
# 输出格式, 默认png，这里使用svg矢量图
graphviz_output_format = 'svg'

mermaid_output_format = 'raw'
mermaid_version = ''
#html_js_files = [
#    'js/mermaid.js'
#]

templates_path = ['_templates']
exclude_patterns = []

todo_include_todos = True
todo_emit_warnings = True

language = 'zh_CN'
numfig = True

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

#html_theme = 'alabaster'
html_theme = 'sphinx_rtd_theme'

html_static_path = ['_static']
html_css_files = [
    'register-graphic.css'
]

latex_engine = 'xelatex'

#latex_elements = {
#    'fontpkg': r'''
#\setmainfont{DejaVu Serif}
#\setsansfont{DejaVu Sans}
#\setmonofont{DejaVu Sans Mono}
#''',
#    'preamble': r'''
#\usepackage[titles]{tocloft}
#\cftsetpnumwidth {1.25cm}\cftsetrmarg{1.5cm}
#\setlength{\cftchapnumwidth}{0.75cm}
#\setlength{\cftsecindent}{\cftchapnumwidth}
#\setlength{\cftsecnumwidth}{1.25cm}
#''',
#    'fncychap': r'\usepackage[Bjornstrup]{fncychap}',
#    'printindex': r'\footnotesize\raggedright\printindex',
#}

latex_show_urls = 'footnote'


latex_elements = {
    'passoptionstopackages': '\\PassOptionsToPackage{dvipsnames}{xcolor}',

    'preamble': r"""
\usepackage{colortbl}
% for Sphinx 1.5.x (1.6 ok, but 1.7 not):
\protected\def\sphinxstylethead {\cellcolor{Aquamarine}\textsf}
% better to use rather this with Sphinx 1.6 and mandatory if Sphinx 1.7:
% \protected\def\sphinxstyletheadfamily {\cellcolor{Aquamarine}\sffamily}
""",
}
