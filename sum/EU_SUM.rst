.. class:: title-logobox

.. list-table::
   :widths: 72

   * - |
       |
       |
       | |ACME_logo|

.. |ACME_logo| image:: images/acme.png
   :width: 245
   :height: 84
   :scale: 250

|
|
|
|

.. class:: title-deepbox

.. list-table::
   :widths: 72

   * - .. class:: title-name

       Software User Manual for Advanced ACME Web Services Appliance
   * - .. class:: title-name

       Engineering Evaluation Unit

|
|
|

.. class:: title-info

Doc #ACME0081443A

.. class:: title-info

Version 0.1

.. class:: title-info

01/31/23

|
|
|

.. class:: title-deepbox

.. list-table::
   :widths: 72

   * - .. class:: title-notice

       Distribution Statement A: Approved for public release. Distribution is unlimited.


.. contents:: Table of Contents

.. raw:: pdf

   PageBreak

Revisions
=========

Document revision history.

.. list-table::
   :widths: 9 19 11 33
   :header-rows: 1

   * - Revision
     - Author
     - Date
     - Description
   * - 0.1
     - SLA
     - 2023-08-21
     - Initial draft shell
   * - 0.2
     - SLA
     - 2023-08-22
     - Add system diagram


.. raw:: pdf

   PageBreak



1.0 - Scope
===========


1.1 - Identification
~~~~~~~~~~~~~~~~~~~~

This document is the Draft Software User Manual (see revision table) for the
End-user Management Component of the Advanced ACME Web Services Appliance,
Engineering Evaluation Unit.


1.2 - System Overview
~~~~~~~~~~~~~~~~~~~~~

The Advanced ACME Web Services Appliance is an on-premise virtual Web Services
cluster with an advanced management interface.  This document provides both the
User Manual and Troubleshooting Guide for the Management Console only.  The ACME
Web Service high-level system components are shown in Figure 1 below:

.. figure:: images/advanced_acme_web_service.png
   :width: 90%

   Figure 1. Advanced ACME Web Service Components

The management console consumes monitoring data and summarizes/displays the
analytics from Spark.


1.3 - Document Overview
~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall summarize the purpose and contents of this manual
and shall describe any security or privacy considerations associated
with its use.

2.0 Referenced documents
========================

This section shall list the number, title, revision, and date of all
documents referenced in this manual. This section shall also identify
the source for all documents not available through normal Government
stocking activities.

3.0 Software summary
====================

This section shall be divided into the following paragraphs.

3.1 Software application
~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall provide a brief description of the intended uses of the
software. Capabilities, operating improvements, and benefits expected from
its use shall be described.

3.2 Software inventory
~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall identify all software files, including databases
and data files, that must be installed for the software to operate. The
identification shall include security and privacy considerations for
each file and identification of the software necessary to continue or
resume operation in case of an emergency.

3.3 Software environment
~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall identify the hardware, software, manual operations,
and other resources needed for a user to install and run the software.
Included, as applicable, shall be identification of:

a. Computer equipment that must be present, including amount of memory
   needed, amount of auxiliary storage needed, and peripheral equipment
   such as printers and other input/output devices
b. Communications equipment that must be present
c. Other software that must be present, such as operating systems,
   databases, data files, utilities, and other supporting systems
d. Forms, procedures, or other manual operations that must be present
e. Other facilities, equipment, or resources that must be present


3.4 Software organization and overview of operation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall provide a brief description of the organization and
operation of the software from the user’s point of view. The description
shall include, as applicable:

a. Logical components of the software, from the user’s point of view,
   and an overview of the purpose/operation of each component
b. Performance characteristics that can be expected by the user, such as:

  1) Types, volumes, rate of inputs accepted
  2) Types, volume, accuracy, rate of outputs that the software can produce
  3) Typical response time and factors that affect it
  4) Typical processing time and factors that affect it
  5) Limitations, such as number of events that can be tracked
  6) Error rate that can be expected
  7) Reliability that can be expected

c. Relationship of the functions performed by the software with interfacing 
   systems, organizations, or positions
d. Supervisory controls that can be implemented (such as passwords) to
   manage the software

3.5 Contingencies and alternate states and modes of operation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall explain the differences in what the user will be
able to do with the software at times of emergency and in various states
and modes of operation, if applicable.

3.6 Security and privacy
~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall contain an overview of the security and privacy
considerations associated with the software. A warning shall be included
regarding making unauthorized copies of software or documents, if
applicable.

3.7 Assistance and problem reporting
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall identify points of contact and procedures to be
followed to obtain assistance and report problems encountered in using
the software.

4.0 Access to the software
==========================

This section shall contain step-by-step procedures oriented to the first
time/occasional user. Enough detail shall be presented so that the user
can reliably access the software before learning the details of its
functional capabilities. Safety precautions, marked by WARNING or
CAUTION, shall be included where applicable.

4.1 First-time user of the software
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall be divided into the following subparagraphs.

4.1.1 Equipment familiarization
-------------------------------

This paragraph shall describe the following as appropriate:

a. Procedures for turning on power and making adjustments
b. Dimensions and capabilities of the visual display screen
c. Appearance of the cursor, how to identify an active cursor if more than
   one cursor can appear, how to position a cursor, and how to use a cursor
d. Keyboard layout and role of different types of keys and pointing devices
e. Procedures for turning power off if special sequencing of operations is needed

4.1.2 Access control
--------------------

This paragraph shall present an overview of the access and security
features of the software that are visible to the user. The following
items shall be included, as applicable:

4.1.3 Installation and setup
----------------------------

This paragraph shall describe any procedures that the user must perform
to be identified or authorized to access or install software on the
equipment, to perform the installation, to configure the software, to
delete or overwrite former files or data, and to enter parameters for
software operation.

4.2 Initiating a session
~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall provide step-by-step procedures for beginning work,
including any options available. A checklist for problem determination
shall be included in case difficulties are encountered.

4.3 Stopping and suspending work
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall describe how the user can cease or interrupt use of
the software and how to determine whether normal termination or
cessation has occurred.

5.0 Processing reference guide
==============================

This section shall provide the user with procedures for using the
software. If procedures are complicated or extensive, additional
Sections 6, 7, etc, may be added in the same paragraph structure as this
section and with titles meaningful to the sections selected. The
organization of the document will depend on the characteristics of the
software being documented. For example, one approach is to base the
sections on the organizations in which users work, their assigned
positions, their work sites, or the tasks they must perform. For other
software, it may be more appropriate to have Section 5 be a guide to
menus, Section 6 be a guide to the command language used, and Section 7
be a guide to functions. Detailed procedures are intended to be
presented in subparagraphs of paragraph 5.3. Depending on the design of
the software, the subparagraphs might be organized on a
function-by-function, menu-by-menu, transaction-by-transaction, or other
basis. Safety precautions, marked by WARNING or CAUTION, shall be
included where applicable.

5.1 Capabilities
~~~~~~~~~~~~~~~~

This paragraph shall briefly describe the interrelationships of the
transactions, menus, functions, or other processes in order to provide
an overview of the use of the software.

5.2 Conventions
~~~~~~~~~~~~~~~

This paragraph shall describe any conventions used by the software, such
as the use of colors in displays, the use of audible alarms, the use of
abbreviated vocabulary, and the use of rules for assigning names or codes.

5.3 Processing procedures
~~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall explain the organization of subsequent paragraphs,
e.g., by function, by menu, by screen. Any necessary order in which
procedures must be accomplished shall be described.

5.3.x (Aspect of software use)
------------------------------

The title of this paragraph shall identify the function, menu,
transaction, or other process being described. This paragraph shall
describe and give options and examples, as applicable, of menus,
graphical icons, data entry forms, user inputs, inputs from other
software or hardware that may affect the software’s interface with the
user, outputs, diagnostic or error messages or alarms, and help
facilities that can provide on-line descriptive or tutorial information.
The format for presenting this information can be adapted to the
particular characteristics of the software, but a consistent style of
presentation shall be used, i.e., the descriptions of menus shall be
consistent, the descriptions of transactions shall be consistent among
themselves.

5.4 Related processing
~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall identify and describe any related batch, offline,
or background processing performed by the software that is not invoked
directly by the user and is not described in paragraph 5.3. Any user
responsibilities to support this processing shall be specified.

5.5 Data backup
~~~~~~~~~~~~~~~

This paragraph shall describe procedures for creating and retaining
backup data that can be used to replace primary copies of data in event
of errors, defects, malfunctions, or accidents.

5.6 Recovery from errors, malfunctions, and emergencies
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This paragraph shall present detailed procedures for restart or recovery
from errors or malfunctions occurring during processing and for ensuring
continuity of operations in the event of emergencies.

5.7 Messages
~~~~~~~~~~~~

This paragraph shall list, or refer to an appendix that lists, all error
messages, diagnostic messages, and information messages that can occur
while accomplishing any of the user’s functions. The meaning of each
message and the action that should be taken after each such message
shall be identified and described.

5.8 Quick-reference guide
~~~~~~~~~~~~~~~~~~~~~~~~~

If appropriate to the software, this paragraph shall provide or
reference a quick-reference card or page for using the software. This
quick-reference guide shall summarize, as applicable, frequently-used
function keys, control sequences, formats, commands, or other aspects of
software use.

6.0 Notes
=========

This section shall contain any general information that aids in understanding
this document (e.g., background information, glossary, rationale). This
section shall include an alphabetical listing of all acronyms, abbreviations,
and their meanings as used in this document and a list of terms and
definitions needed to understand this document.

A.0 Appendixes
==============

Appendixes may be used to provide information published separately for
convenience in document maintenance (e.g., charts, classified data). As
applicable, each appendix shall be referenced in the main body of the
document where the data would normally have been provided. Appendixes
may be bound as separate documents for ease in handling. Appendixes
shall be lettered alphabetically (A, B, etc.).

