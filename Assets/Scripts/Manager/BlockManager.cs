namespace oneshotpuzzle
{
    using System.Collections;
    using System.Collections.Generic;
    using UnityEngine;

    public class BlockManager : MonoBehaviour
    {
        public Block[] blockArray;

        [SerializeField] private int m_blockCount;

        private void Start()
        {
            blockArray = FindObjectsOfType<Block>();

            m_blockCount = blockArray.Length;

            SubscribeToEvent();
        }

        void SubscribeToEvent()
        {
            foreach (Block block in blockArray)
            {
                block.OnBeingHit += DecreaseBlockCount;
            }

            FindObjectOfType<PlayerController>().OnMouseClick += ResetAllBlocks;
        }
        private void DecreaseBlockCount()
        {
            m_blockCount--;

            if (m_blockCount == 0)
            {
                StartCoroutine(WaitBeforeLoadingNextScene());
            }

        }

        IEnumerator WaitBeforeLoadingNextScene()
        {
            yield return new WaitForSeconds(1f);
            ScenesManager.LoadNextScene();

        }
        void ResetAllBlocks()
        {
            foreach (Block block in blockArray)
            {
                if (!block.gameObject.activeSelf)
                {
                    block.gameObject.SetActive(true);
                }
            }

            m_blockCount = blockArray.Length;
        }

    }
}