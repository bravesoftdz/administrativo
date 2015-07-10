package br.com.msystem.bo;

import java.util.List;

import br.com.msystem.exceptions.SystemException;
import br.com.msystem.vo.Classificacao;

public class ClassificacaoBo extends GenericBo<Classificacao> {

	private ClassificacaoBo(Class<Classificacao> argClass)
			throws SystemException {
		super(argClass);
	}

	private static ClassificacaoBo instance;

	public static ClassificacaoBo getInstance() throws SystemException {
		if (instance == null)
			instance = new ClassificacaoBo(Classificacao.class);
		return instance;
	}

	@Override
	public void validarRegistro(Classificacao instance) throws SystemException {
		List<Classificacao> lista = listar();
		for (Classificacao registro : lista) {
			if (!registro.getCodigoClassificacao().equals(
					instance.getCodigoClassificacao())) {
				if ((instance.getLimiteMinimo().longValue() >= registro
						.getLimiteMinimo().longValue())
						&& (instance.getLimiteMinimo().longValue() <= registro
								.getLimiteMaximo().longValue())) {
					throw new SystemException(
							"Limite m�nimo em conlito com a Classificacao '"
									+ registro.getCodigoClassificacao() + "'");
				}

				if ((instance.getLimiteMaximo().longValue() >= registro
						.getLimiteMinimo().longValue())
						&& (instance.getLimiteMaximo().longValue() <= registro
								.getLimiteMaximo().longValue())) {
					throw new SystemException(
							"Limite m�ximo em conlito com a Classificacao '"
									+ registro.getCodigoClassificacao() + "'");
				}

				if ((instance.getLimiteMinimo().longValue() <= registro
						.getLimiteMinimo().longValue())
						&& (instance.getLimiteMaximo().longValue() >= registro
								.getLimiteMaximo().longValue())) {
					throw new SystemException(
							"Limites m�nimo e m�ximo em conlito com a Classificacao '"
									+ registro.getCodigoClassificacao() + "'");
				}
			}
		}
	}
}
