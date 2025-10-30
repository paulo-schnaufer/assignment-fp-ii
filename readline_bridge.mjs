import readlineSync from 'readline-sync';

export function question(prompt) {
  return readlineSync.question(prompt);
}
