/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.util.ArrayList;
import modelos.Produto;
import modelos.Usuario;

/**
 *
 * @author gutol
 */
public class Mock {


    public static void makeMock(){
        createUsers();
        createProducts();
    }

    private static void createUsers(){
        ArrayList<Usuario> lista;

        if(Usuario.getLista().isEmpty()){
            lista = Usuario.getLista();

            Usuario admin = new Usuario();
            admin.setEmail("admin@ifpr.edu.br");
            admin.setSenha("admin");
            admin.setNome("Administrador");
            lista.add(admin);

            Usuario gerente = new Usuario();
            gerente.setEmail("gerente@ifpr.edu.br");
            gerente.setSenha("123");
            gerente.setNome("Fulano de Tal");
            lista.add(gerente);
        }

    }

    private static void createProducts(){
        ArrayList<Produto> lista;

        //só cria produtos com lista vazia
        if(Produto.lista.isEmpty()){
            lista = Produto.lista;

            Produto chaveiroMarcha = new Produto();
            chaveiroMarcha.setDescricao("Chaveiro Marcha");
            chaveiroMarcha.setInfo("Representa um câmbio de carro");
            chaveiroMarcha.setPreco(1.5f);
            chaveiroMarcha.setOferta(true);
            chaveiroMarcha.setImagem("https://31b93296e4855c6e.cdn.gocache.net/loja/imagens/full/chaveiro-tuning-cambio-azul-2.png");
            lista.add(chaveiroMarcha);

            Produto chaveiroCapacete = new Produto();
            chaveiroCapacete.setDescricao("Chaveiro Capacete");
            chaveiroCapacete.setInfo("Um capacete de um jogo muito popular para decorar suas chaves");
            chaveiroCapacete.setPreco(2.5f);
            chaveiroCapacete.setOferta(true);
            chaveiroCapacete.setImagem("data:image/jpeg;base64,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");
            lista.add(chaveiroCapacete);

            Produto chaveiroManoplaThanos = new Produto();
            chaveiroManoplaThanos.setDescricao("Chaveiro Manopla Thanos");
            chaveiroManoplaThanos.setInfo("Reduza as chances de errar a chave em 50%");
            chaveiroManoplaThanos.setPreco(4.5f);
            chaveiroManoplaThanos.setOferta(true);
            chaveiroManoplaThanos.setImagem("https://ae01.alicdn.com/kf/HTB1o01Luv1TBuNjy0Fjq6yjyXXaQ/Avengers-3-Infinito-Chaveiro-Guerra-Thanos-Poder-Infinito-Manopla-Pedra-Esp-rito-Cosplay-Homens-Chaveiro-Chaveiros.jpg");
            lista.add(chaveiroManoplaThanos);

            Produto chaveiroBitcoin = new Produto();
            chaveiroBitcoin.setDescricao("Chaveiro Bitcoin");
            chaveiroBitcoin.setInfo("A representação da moeda virtual");
            chaveiroBitcoin.setPreco(3.0f);
            chaveiroBitcoin.setOferta(true);
            chaveiroBitcoin.setImagem("https://www.pontofrio-imagens.com.br/Moda/AcessoriosdeModa/chaveiros/13537534/1009044726/chaveiro-bitcoin-dourado-4cm-banhado-a-ouro-13537534.jpg");
            lista.add(chaveiroBitcoin);


        }
    }

}
