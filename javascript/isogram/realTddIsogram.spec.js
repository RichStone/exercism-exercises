import { isIsogram } from './isogram';

describe('Isogram', () => {
  describe('Check if the given string is an isogram', () => {
    test('empty string', () => {
      expect(isIsogram('')).toEqual(true);
    });

    test('for a simple isogram', () => {
      expect(isIsogram('lumberjacks')).toEqual(true);
      expect(isIsogram('background')).toEqual(true);
      expect(isIsogram('downstream')).toEqual(true);
    });

    test('with a hyphen', () => {
      expect(isIsogram('six-year-old')).toBe(true);
    });

    test('with spaces between words', () => {
      expect(isIsogram('six year old')).toBe(true);
    });

    test('only special characters', () => {
      expect(isIsogram('!@#$%^')).toBe(true);
    });

    test('with only spaces', () => {
      expect(isIsogram('  ')).toBe(true);
    });

    test('upper and lowercase mix', () => {
      expect(isIsogram('ABCdefg')).toBe(true);
    });

    test('upper and lowercase for non-isogram', () => {
      expect(isIsogram('ABCdefga')).toBe(false);
    });
  });
});
