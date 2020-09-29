TEMPLATE = subdirs

SUBDIRS += \
    cm-lib \
    cm-tests \
    cm-ui

!build_pass:message(LearnQt project dir: $${PWD})
