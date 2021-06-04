<?php
require_once('class.Jeu.php');
class Boutique{
    private $id = 0;
    private $nom = null;
    private $localisation = null;

    private $jeuVendu = array();

    /**
     * Boutique constructor.
     * @param int $id
     * @param null $nom
     * @param null $localisation
     */
    public function __construct($id, $nom, $localisation)
    {
        $this->id = $id;
        $this->nom = $nom;
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
     * @return null
     */
    public function getLocalisation()
    {
        return $this->localisation;
    }

    /**
     * @param null $localisation
     */
    public function setLocalisation($localisation)
    {
        $this->localisation = $localisation;
    }

    /**
     * @return array
     */
    public function getJeuVendu()
    {
        return $this->jeuVendu;
    }

    /**
     * @param array $jeuVendu
     */
    public function setJeuVendu($jeuVendu)
    {
        $this->jeuVendu = $jeuVendu;
    }


}
?>