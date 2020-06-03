import 'package:flutter/material.dart';
import 'package:portfoliowan/ModelClass/ProjectClass.dart';
import 'dart:html' as html;
import 'ListProjects.dart';

class ProjectDesktopLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 5.0,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.3),
      ),
      itemCount: projects.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ProjectCard(projects[index]);
      },
    );
  }
}

class ProjectDesktopMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 5.0,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 2.2),
      ),
      itemCount: projects.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ProjectCard(projects[index]);
      },
    );
  }
}

class ProjectDesktopSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 32.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 5.0,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 4.0),
      ),
      itemCount: projects.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ProjectCard(projects[index]);
      },
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Project _project;

  ProjectCard(this._project);
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.yellow,
      elevation: 2.0,
      child: InkWell(
        onTap: () {
          html.window.open(_project.link, 'adityadroid');
        },
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Image.asset(
                  _project.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          _project.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          _project.description,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
