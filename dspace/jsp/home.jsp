<%--
  - home.jsp
  -
  - Version: $Revision$
  -
  - Date: $Date$
  -
  - Copyright (c) 2001, Hewlett-Packard Company and Massachusetts
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
  - Home page JSP
  -
  - Attributes:
  -    communities - Community[] all communities in DSpace
  --%>

<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page import="org.dspace.content.Community" %>
<%@ page import="org.dspace.core.ConfigurationManager" %>

<%
    Community[] communities = (Community[]) request.getAttribute("communities");
%>

<dspace:layout locbar="nolink" title="Home">

    <table class="miscTable" width="95%" align="center">
        <tr>
            <td class="oddRowEvenCol">
                <dspace:include page="/components/news.jsp" />
            </td>
        </tr>
    </table>
  
    <br>

    <form action="<%= request.getContextPath() %>/simple-search" method=GET>
        <table class="miscTable" width="95%" align="center">
            <tr>
                <td class="oddRowEvenCol">
                    <H3>Search</H3>
                      <P>Enter some text in the box below to search DSpace.</P>
                      <P><input type=text name=query size=20>&nbsp;<input type=submit name=submit value="Go"></P>
                </td>
            </tr>
        </table>
    </form>

    <table class="miscTable" width="95%" align="center">
        <tr>
            <td class="oddRowEvenCol">
                <H3>Communities in DSpace</H3>
                <P>Select a community to browse its collections.</P>
                <table border=0 cellpadding=2>
<%
    for (int i = 0; i < communities.length; i++)
    {
%>                  <tr>
                        <td class="standard">
                            <A HREF="<%= request.getContextPath() %>/handle/<%= communities[i].getHandle() %>"><%= communities[i].getMetadata("name") %></A>
                        </td>
                    </tr>
<%
    }
%>
                </table>
            </td>
        </tr>
    </table>

  <dspace:sidebar>
    <%-- non-break spaces to make sidebar a reasonable width--%>
    <H2>What&nbsp;can&nbsp;you find&nbsp;in&nbsp;DSpace?</H2>
    <P><strong>MIT</strong> Research in digital form, including preprints, technical reports, working papers, conference papers, images, and more.</P>

    <br>
    <H2>Is this all of MIT's&nbsp;research?</H2>
    <P>No. DSpace is limited to digital research products. For items in print, go to <A HREF="http://libraries.mit.edu/barton">Barton: MIT Libraries' catalog</a>. DSpace is young and growing rapidly. Check back often.</P>
  </dspace:sidebar>
</dspace:layout>
