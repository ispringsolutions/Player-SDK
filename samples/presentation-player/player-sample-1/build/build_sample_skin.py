import subprocess, os, sys, string
from optparse import OptionParser

def main():
	usage = "usage: %prog [options]"
	parser = OptionParser(usage=usage)
	parser.add_option("--release", action="store_false", dest="debug", help="release mode")
	parser.add_option("--debug", action="store_true", dest="debug", help="debug mode", default=False)
	parser.add_option("--flexsdkpath", dest="flexsdkpath", help="path to flex SDK")
	(options, args) = parser.parse_args()
	
	flexSdkPath = options.flexsdkpath if options.flexsdkpath else os.environ['FLEX_SDK_FOLDER']
	compilerPath = os.path.normpath(flexSdkPath + '/bin/compc.exe')
	
	compilerOptions = [];
	compilerOptions += ['-debug=' + ('true' if options.debug else 'false')]
	
	implPath = absPath('../src')
	compilerOptions += ['-source-path', implPath]
	
	sdkPath = absPath('../../../../src/sdk')
	compilerOptions += ['-source-path', sdkPath]
	
	print implPath
	
	compilerOptions += ['-include-classes', 'sampleSkin.SamplePlaybackSkinFactory']
	compilerOptions += ['-include-libraries', absPath('../resources/sample_skin_assets.swc')]
	compilerOptions += ['-output=' + absPath('../output/sample_skin.swc')];
	
	exitCode = subprocess.call([compilerPath] + compilerOptions)
	assertExitCode(exitCode)
	
def absPath(path):
	absScriptPath = os.path.abspath(__file__)
	scriptDir = os.path.dirname(absScriptPath)
	absFilePath = os.path.realpath(scriptDir + "/" + path)
	return os.path.normpath(absFilePath)
	
def assertExitCode(code, msg="Press Enter to exit..."):
	if code != 0:
		exitWithError(msg, code)

def exitWithError(msg="", errorCode=1):
	print(msg)
	sys.exit(errorCode)

main()