package pl.app.elearning.domain.mode;


public abstract class Mode {

	private String modeName;

	public Mode(String modeName) {
		setModeName(modeName);
	}

	public void setModeName(String modeName) {
		if (modeName == null || modeName.isEmpty()) {
			throw new IllegalArgumentException("Invalid mode name");
		}
		this.modeName = modeName;
	}

	public String getModeName() {
		return modeName;
	}
}
