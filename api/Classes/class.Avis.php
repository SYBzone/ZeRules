<?php
require_once('class.Utilisateurs.php');
require_once('class.Reglealternative.php');
class Avis{
    private $id = 0;
    private $commentaire = null;
    private $note = 0;


    /**
     * Avis constructor.
     * @param int $id
     * @param null $commentaire
     * @param int $note
     */
    public function __construct($id, $commentaire, $note)
    {
        $this->id = $id;
        $this->commentaire = $commentaire;
        $this->note = $note;
    }

    /**
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return null
     */
    public function getCommentaire()
    {
        return $this->commentaire;
    }

    /**
     * @param null $commentaire
     */
    public function setCommentaire($commentaire)
    {
        $this->commentaire = $commentaire;
    }

    /**
     * @return int
     */
    public function getNote()
    {
        return $this->note;
    }

    /**
     * @param int $note
     */
    public function setNote($note)
    {
        $this->note = $note;
    }


}
?>