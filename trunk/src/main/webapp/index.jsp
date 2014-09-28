<%--
  #%L
  FAHWeb
  %%
  Copyright (C) 2012 - 2014 Michael Thomas <mikepthomas@outlook.com>
  %%
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as
  published by the Free Software Foundation, either version 3 of the 
  License, or (at your option) any later version.
  
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
  
  You should have received a copy of the GNU General Public 
  License along with this program.  If not, see
  <http://www.gnu.org/licenses/gpl-3.0.html>.
  #L%
  --%>
<%--
    Document   : index
    Created on : Sep 22, 2012, 2:31:10 PM
    Author     : Michael Thomas (mikepthomas@outlook.com)
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="header.jsp"/>

<!-- Carousel -->
<div id="carousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
    </ol>

    <div class="carousel-inner">
        <div class="item active">
            <img alt="" src="http://placehold.it/1000x400&text=[img 1]"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1><s:property value="pageTitle" default="Welcome To FAHWeb"/></h1>
                    <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img alt="" src="http://placehold.it/1000x400&text=[img 2]"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1><s:property value="pageTitle" default="Welcome To FAHWeb"/></h1>
                    <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img alt="" src="http://placehold.it/1000x400&text=[img 3]"/>
            <div class="container">
                <div class="carousel-caption">
                    <h1><s:property value="pageTitle" default="Welcome To FAHWeb"/></h1>
                    <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#carousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#carousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
</div>

<!-- Three-up Content Blocks -->
<div class="container">
    <div class="row">

        <div class="col-md-4">
            <div class="thumbnail">
                <img alt="" src="<s:url value="/img/protein-folding.png"/>"/>
                <div class="caption">
                    <h3>READY.</h3>
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#" data-toggle="modal" data-target="#whatIsProteinFolding">What is protein folding?</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#whyDoesItMatter">Why does it matter?</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#howCanIHelp">How can I help?</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="thumbnail">
                <img alt="" src="<s:url value="/img/fold.png"/>"/>
                <div class="caption">
                    <h3>SET.</h3>
                    <ul class="nav nav-pills nav-stacked">
                        <li><a href="#">Download Folding@home</a></li>
                        <li><a href="#">Other platforms</a></li>
                        <li><a href="#">Older versions</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="thumbnail">
                <img alt="" src="<s:url value="/img/compete.png"/>"/>
                <div class="caption">
                    <h3>FOLD.</h3>
                    <ul class="nav nav-pills nav-stacked"   >
                        <li><a href="#" data-toggle="modal" data-target="#startFoldingNow">Start folding now!</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#getHelp">Get help.</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#joinATeam">Earn points, join a team.</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div id="whatIsProteinFolding" class="modal fade" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3>What are proteins?</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            Proteins are biology's workhorses -- its "nanomachines." Proteins help your body break down food into energy, regulate your moods, and fight disease.
                        </p>
                    </div>
                    <div class="modal-header">
                        <h3>What is protein folding?</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            Before proteins can carry out these important functions, they assemble themselves, or "fold." While protein folding is critical and fundamental to virtually all of biology, much of the process remains a mystery.
                        </p>
                        <p>For more information see the Science page.</p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                            <span class="glyphicon glyphicon-remove"></span> Close
                        </button>
                        <button class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#whyDoesItMatter">Next…</button>
                    </div>
                </div>
            </div>
        </div>

        <div id="whyDoesItMatter" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3>Why is it important to understand how proteins fold?</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            When proteins do not fold correctly, also known as misfolding, there can be serious health consequences, including many well known diseases, such as Alzheimer's, Mad Cow (BSE), CJD, ALS, Huntington's, Parkinson's disease, and many cancers.
                        </p>
                        <p>
                            If we better understand protein misfolding we can design drugs and therapies to combat these illnesses.
                        </p>
                        <p>For more information see the Folding@home FAQ on diseases.</p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                            <span class="glyphicon glyphicon-remove"></span> Close
                        </button>
                        <button class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#howCanIHelp">Next…</button>
                    </div>
                </div>
            </div>
        </div>

        <div id="howCanIHelp" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3>How can I help?</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            The best way to help is by downloading and running the free Folding@home client software. Each computer that participates increases our ability to understand how proteins fold.
                        </p>
                        <p>
                            Once installed the Folding@home software runs behind the scenes using otherwise unused computing time. Mostly likely you will hardly even notice it.
                        </p>
                        <p>If you would like to make a donation see the Donations page.</p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                            <span class="glyphicon glyphicon-remove"></span> Close
                        </button>
                        <button class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#startFoldingNow">Next…</button>
                    </div>
                </div>
            </div>
        </div>

        <div id="startFoldingNow" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3>Where do I start?</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            The first thing to do is install the software. See the Installation Guide if you need help with this.
                        </p>
                    </div>
                    <div class="modal-header">
                        <h3>Monitor your folding status</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            Once you've installed the software run FAHControl and look for the "Online: Running" status. If you're having problems visit the Folding Forum.
                        </p>
                    </div>
                    <div class="modal-header">
                        <h3>Run the 3D viewer</h3>
                    </div>
                    <div class="modal-body">
                        <p>You can view the protein running on your computer in 3D by running FAHViewer.</p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                            <span class="glyphicon glyphicon-remove"></span> Close
                        </button>
                        <button class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#getHelp">Next…</button>
                    </div>
                </div>
            </div>
        </div>

        <div id="getHelp" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3>There are many resources for Folding@home help.</h3>
                    </div>
                    <div class="modal-body">
                        <ul>
                            <li>The Folding@home Frequently Asked Questions page answers many common questions.</li>
                            <li>On the Client Development Project page you can find information specific to the new v7 client, report bugs and learn about the 3rd-party development API.</li>
                            <li>The Folding Forum has a very active community of expert folders who would be glad to help you with any problems you might have. It is also a great place to get more involved.</li>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                            <span class="glyphicon glyphicon-remove"></span> Close
                        </button>
                        <button class="btn btn-primary" data-dismiss="modal" data-toggle="modal" data-target="#joinATeam">Next…</button>
                    </div>
                </div>
            </div>
        </div>

        <div id="joinATeam" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3>Competing is fun and helps the cause.</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            Do you have the latest hardware? Are you itching to show off what your new GPU or overclocked CPU can do?
                        </p>
                    </div>
                    <div class="modal-header">
                        <h3>Complete folding Work Units and earn points.</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            Monitor your Points Per Day (PPD) to keep track of your performance. Visit sites like Extreme Overclocking, Kakao Stats or Hard Folding to see how you and your team compare to folders around the world.
                        </p>
                    </div>
                    <div class="modal-header">
                        <h3>Start or join a team.</h3>
                    </div>
                    <div class="modal-body">
                        <p>
                            Starting a folding team is a great way to promote Folding@home. Use your technical skills to build a folding power house. Compete with teams across the globe or for top positions with in your team.
                        </p>
                        <p>
                            To check out current Folding@home statistics or to start a new team see the Folding@home Stats page.
                        </p>
                    </div>
                    <div class="modal-footer">
                        <button class="btn" data-dismiss="modal" aria-hidden="true">
                            <span class="glyphicon glyphicon-remove"></span> Close
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr/>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <p>
                You can help scientists studying Alzheimer's, Huntington's, and many cancers by simply running a piece of software on your computer or game console.
            </p>
            <p>
                Join others around the world to form the world's largest distributed supercomputer.
            </p>
            <p>
                <small>Text from <a href="http://folding.stanford.edu/">Folding@home Homepage</a></small>
            </p>
        </div>
    </div>

    <div class="well well-lg">
        <h4>Get in touch!</h4>
        <a href="contact.jsp" class="btn btn-primary pull-right">Contact Us</a>
        <p>We'd love to hear from you, you attractive person you.</p>
    </div>
</div>

<jsp:include page="footer.jsp"/>
