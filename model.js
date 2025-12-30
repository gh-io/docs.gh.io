import Anthropic from '@anthropic-ai/sdk';

const anthropic = new Anthropic();
// AI Gateway provides credentials automatically

const message = await anthropic.messages.create({
  model: 'claude-sonnet-4-5-20250929',
  messages: [{ role: 'user', content: prompt }]
});
