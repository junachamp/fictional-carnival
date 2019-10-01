// import de librerias de runtime de ANTLR
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.File;

public class Test {
	public static void main(String[] args) throws Exception {
		try{
			// crear un analizador léxico que se alimenta apartir de la entrada (archivo  o consola)
			Hola lexer;
			if (args.length>0)
				lexer = new Hola(CharStreams.fromFileName(args[0]));
			else
				lexer = new Hola(CharStreams.fromStream(System.in));
			
			// Reemplaza el manejador de errores por defecto
			//lexer.removeErrorListeners();
			//lexer.addErrorListener(new LexicalError());
					
			// Identificar al analizador léxico como fuente de tokens para el sintactico
			CommonTokenStream tokens = new CommonTokenStream(lexer);
			// Recorre todos los tokens 
			for (Token token = lexer.nextToken(); token.getType() != Token.EOF; token = lexer.nextToken()) {
				// Imprime la información de cada token
				System.out.println("Token: " + lexer.getVocabulary().getSymbolicName(token.getType()) + "\t" + 
								"Lexema: " + token.getText() + "\t" + 
								"Línea: "  + token.getLine() + "\t" +
								"Posición: " + token.getCharPositionInLine()
							);
			}
		} catch (Exception e){
			System.err.println("Error (Test): " + e);
		}
	}
}
