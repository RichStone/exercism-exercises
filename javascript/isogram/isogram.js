export const isIsogram = (text) => {
  const normalizedChars = text.toLowerCase().match(/\w+/g);
  let normalizedText = normalizedChars ? normalizedChars.join('') : '';
  const uniqueCharacters = new Set([...normalizedText]);
  return uniqueCharacters.size === normalizedText.length;
};
