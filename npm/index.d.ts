declare module '@apiverve/randomjoke' {
  export interface randomjokeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface randomjokeResponse {
    status: string;
    error: string | null;
    data: RandomJokeData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface RandomJokeData {
      score:     number | null;
      setup:     null | string;
      punchline: null | string;
  }

  export default class randomjokeWrapper {
    constructor(options: randomjokeOptions);

    execute(callback: (error: any, data: randomjokeResponse | null) => void): Promise<randomjokeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: randomjokeResponse | null) => void): Promise<randomjokeResponse>;
    execute(query?: Record<string, any>): Promise<randomjokeResponse>;
  }
}
