<?php
require_once('class.Filtre.php');
require_once('class.Boutique.php');
require_once('class.Reglealternative.php');
require_once('class.Regleofficielle.php');
class Jeu{
    private $id = 0;
    private $nom = null;
    private $filtre = array();
    private $boutiqueVendeuse = array();
    private $regleOfficielle = null;
    private $regleAlternative = array();


    private $jeupropose = array();
    /**
     * Jeu constructor.
     * @param int $id
     * @param null $nom
     */
    public function __construct($id, $nom)
    {
        $this->id = $id;
        $this->nom = $nom;
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
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * @param null $nom
     */
    public function setNom($nom)
    {
        $this->nom = $nom;
    }

    /**
     * @return array
     */
    public function getFiltre()
    {
        return $this->filtre;
    }

    /**
     * @param array $filtre
     */
    public function setFiltre($filtre)
    {
        $this->filtre = $filtre;
    }

    /**
     * @return array
     */
    public function getBoutiqueVendeuse()
    {
        return $this->boutiqueVendeuse;
    }

    /**
     * @param array $boutiqueVendeuse
     */
    public function setBoutiqueVendeuse($boutiqueVendeuse)
    {
        $this->boutiqueVendeuse = $boutiqueVendeuse;
    }

    /**
     * @return array
     */
    public function getRegleOfficielle()
    {
        return $this->regleOfficielle;
    }

    /**
     * @param array $regleOfficielle
     */
    public function setRegleOfficielle($regleOfficielle)
    {
        $this->regleOfficielle = $regleOfficielle;
    }

    /**
     * @return array
     */
    public function getRegleAlternative()
    {
        return $this->regleAlternative;
    }

    /**
     * @param array $regleAlternative
     */
    public function setRegleAlternative($regleAlternative)
    {
        $this->regleAlternative = $regleAlternative;
    }

    /**
     * @return array
     */
    public function getJeupropose()
    {
        return $this->jeupropose;
    }

    /**
     * @param array $jeupropose
     */
    public function setJeupropose($jeupropose)
    {
        $this->jeupropose = $jeupropose;
    }

}
?>