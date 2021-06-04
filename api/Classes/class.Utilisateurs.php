<?php
require_once('class.Avis.php');
require_once('class.Reglealternative.php');

class Utilisateurs implements JsonSerializable {
    private $id = 0;
    private $pseudo = null;
    private $mail = null;
    private $mdp = null;
    private $localisation = 0;

    private $avisRegleAlternative = array();
    private $regleCree = array();
    private $reglePartagee = array();

    /**
     * Utilisateurs constructor.
     * @param int $id
     * @param null $pseudo
     * @param null $mail
     * @param null $mdp
     * @param int $localisation
     */
    public function __construct($id, $pseudo, $mail, $mdp, $localisation)
    {
        $this->id = $id;
        $this->pseudo = $pseudo;
        $this->mail = $mail;
        $this->mdp = $mdp;
        $this->localisation = $localisation;
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
    public function getPseudo()
    {
        return $this->pseudo;
    }

    /**
     * @param null $pseudo
     */
    public function setPseudo($pseudo)
    {
        $this->pseudo = $pseudo;
    }

    /**
     * @return null
     */
    public function getMail()
    {
        return $this->mail;
    }

    /**
     * @param null $mail
     */
    public function setMail($mail)
    {
        $this->mail = $mail;
    }

    /**
     * @return null
     */
    public function getMdp()
    {
        return $this->mdp;
    }

    /**
     * @param null $mdp
     */
    public function setMdp($mdp)
    {
        $this->mdp = $mdp;
    }

    /**
     * @return int
     */
    public function getLocalisation()
    {
        return $this->localisation;
    }

    /**
     * @param int $localisation
     */
    public function setLocalisation($localisation)
    {
        $this->localisation = $localisation;
    }

    /**
     * @return array
     */
    public function getAvisRegleAlternative()
    {
        return $this->avisRegleAlternative;
    }

    /**
     * @param array $avisRegleAlternative
     */
    public function setAvisRegleAlternative($avisRegleAlternative)
    {
        $this->avisRegleAlternative = $avisRegleAlternative;
    }

    /**
     * @return array
     */
    public function getRegleCree()
    {
        return $this->regleCree;
    }

    /**
     * @param array $regleCree
     */
    public function setRegleCree($regleCree)
    {
        $this->regleCree = $regleCree;
    }

    /**
     * @return array
     */
    public function getReglePartagee()
    {
        return $this->reglePartagee;
    }

    /**
     * @param array $reglePartagee
     */
    public function setReglePartagee($reglePartagee)
    {
        $this->reglePartagee = $reglePartagee;
    }

    public function jsonSerialize(){ return get_object_vars($this); }

}
?>