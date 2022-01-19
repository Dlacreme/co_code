export class Session {
  constructor() { }

  public getId(): string {
    return window.location.pathname.slice(1);
  }

  public getUrl(): string {
    return `${window.location.protocol}//${window.location.host}/${this.getId()}`;
  }
}