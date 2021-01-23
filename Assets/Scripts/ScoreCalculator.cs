using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreCalculator : MonoBehaviour
{

    public static ScoreCalculator Instance;

    private int totalScore;
    public int CalculateAndGetScore(int noOfHits)
    {
        totalScore = 10*noOfHits;
        Debug.Log("The Score : "+totalScore);
        return totalScore;
    }
}
