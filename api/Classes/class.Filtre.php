<?php
require_once('class.Jeu.php');
class Filtre{
    private $nbjoueur = 0;
    private $materiel = null;
    private $duree = 0;

    private $jeuProposer = array();

    /**
     * Filtre constructor.
     * @param int $nbjoueur
     * @param null $materiel
     * @param int $duree
     */
    public function __construct($nbjoueur, $materiel, $duree)
    {
        $this->nbjoueur = $nbjoueur;
        $this->materiel = $materiel;
        $this->duree = $duree;
    }

    /**
     * @return int
     */
    public function getNbjoueur()
    {
        return $this->nbjoueur;
    }

    /**
     * @param int $nbjoueur
     */
    public function setNbjoueur($nbjoueur)
    {
        $this->nbjoueur = $nbjoueur;
    }

    /**
     * @return null
     */
    public function getMateriel()
    {
        return $this->materiel;
    }

    /**
     * @param null $materiel
     */
    public function setMateriel($materiel)
    {
        $this->materiel = $materiel;
    }

    /**
     * @return int
     */
    public function getDuree()
    {
        return $this->duree;
    }

    /**
     * @param int $duree
     */
    public function setDuree($duree)
    {
        $this->duree = $duree;
    }

    /**
     * @return array
     */
    public function getJeuProposer()
    {
        return $this->jeuProposer;
    }

    /**
     * @param array $jeuProposer
     */
    public function setJeuProposer($jeuProposer)
    {
        $this->jeuProposer = $jeuProposer;
    }

}
?>