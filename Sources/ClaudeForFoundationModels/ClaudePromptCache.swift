// Copyright 2026 Anthropic PBC
// SPDX-License-Identifier: Apache-2.0

/// How long the API keeps a request's prompt cache after its last use.
///
/// Writing to the cache costs more than plain input and reading costs much
/// less, and a read restarts the timer. Choose ``oneHour`` for conversations
/// that pause for more than five minutes between requests: a request after
/// the cache expired reads nothing and writes the whole prompt again.
public enum ClaudePromptCache: Sendable, Hashable {
  /// The API's default. Cache writes cost 1.25 times the input price.
  case fiveMinutes
  /// Cache writes cost 2 times the input price.
  case oneHour
}
