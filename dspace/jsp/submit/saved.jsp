<%--
  - saved.jsp
  -
  - Version: $Revision$
  -
  - Date: $Date$
  -
  - Copyright (c) 2002, Hewlett-Packard Company and Massachusetts
  - Institute of Technology.  All rights reserved.
  -
  - Redistribution and use in source and binary forms, with or without
  - modification, are permitted provided that the following conditions are
  - met:
  -
  - - Redistributions of source code must retain the above copyright
  - notice, this list of conditions and the following disclaimer.
  -
  - - Redistributions in binary form must reproduce the above copyright
  - notice, this list of conditions and the following disclaimer in the
  - documentation and/or other materials provided with the distribution.
  -
  - - Neither the name of the Hewlett-Packard Company nor the name of the
  - Massachusetts Institute of Technology nor the names of their
  - contributors may be used to endorse or promote products derived from
  - this software without specific prior written permission.
  -
  - THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
  - ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  - LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  - A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  - HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  - INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
  - BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
  - OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
  - ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
  - TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
  - USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
  - DAMAGE.
  --%>

<%--
  - Submission saved message - displayed whenever the user has clicked
  - "cancel/save" during a submission and elected to save the item.
  --%>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"
    prefix="fmt" %>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<dspace:layout locbar="off" navbar="off" titlekey="jsp.submit.saved.title">

    <%-- <H1>Submission Saved</H1> --%>
	<H1><fmt:message key="jsp.submit.saved.title"/></H1>

    <%-- <P>Your submission has been saved for you to finish later.  You can continue
    the submission by going to your "My DSpace" page and clicking on the
    relevant "Resume" button.</P> --%>
	<P><fmt:message key="jsp.submit.saved.info"/></P>

    <%-- <P><A HREF="<%= request.getContextPath() %>/mydspace">Go to My DSpace</A></P> --%>
	<P><A HREF="<%= request.getContextPath() %>/mydspace"><fmt:message key="jsp.submit.saved.link"/></A></P>

</dspace:layout>
