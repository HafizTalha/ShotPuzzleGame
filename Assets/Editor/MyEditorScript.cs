
using UnityEditor;
using UnityEngine;
using UnityEditor.Build.Reporting;
class MyEditorScript
{
 

    static void PerformBuild()
    {
        BuildPlayerOptions buildPlayerOptions = new BuildPlayerOptions();
        buildPlayerOptions.scenes = new[] { "Assets/Scenes/scene1.unity", "Assets/Scenes/scene2.unity", "Assets/Scenes/scene3.unity",
        "Assets/Scenes/scene4.unity","Assets/Scenes/scene5.unity"};
        buildPlayerOptions.locationPathName = "C:/Users/Administrator/Documents/SadiBuild";
        buildPlayerOptions.target = BuildTarget.StandaloneWindows64;
        buildPlayerOptions.options = BuildOptions.None;

        BuildReport report = BuildPipeline.BuildPlayer(buildPlayerOptions);
        BuildSummary summary = report.summary;

        if (summary.result == BuildResult.Succeeded)
        {
            Debug.Log("Build succeeded: " + summary.totalSize + " bytes");
        }

        if (summary.result == BuildResult.Failed)
        {
            Debug.Log("Build failed");
        }
    }
}