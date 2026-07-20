# LanceTags

Tags operation.

## Struct Definition

```text
pub struct LanceTags<'a> { /* private fields */ }
```

## Methods

### `fetch_tags`
```text
pub async fn fetch_tags(&self) -> Result<Vec<(String, TagContents)>, Error>
```

### `list`
```text
pub async fn list(&self) -> Result<HashMap<String, TagContents>, Error>
```

### `list_tags_ordered`
```text
pub async fn list_tags_ordered(
    &self,
    order: Option<Ordering>,
) -> Result<Vec<(String, TagContents)>, Error>
```

### `get_version`
```text
pub async fn get_version(&self, tag: &str) -> Result<u64, Error>
```

### `get`
```text
pub async fn get(&self, tag: &str) -> Result<TagContents, Error>
```

### `create`
```text
pub async fn create(
    &self,
    tag: &str,
    reference: impl Into<Ref>,
) -> Result<(), Error>
```

### `delete`
```text
pub async fn delete(&self, tag: &str) -> Result<(), Error>
```

### `update`
```text
pub async fn update(
    &self,
    tag: &str,
    reference: impl Into<Ref>,
) -> Result<(), Error>
```

### `replace_metadata`
```text
pub async fn replace_metadata(
    &self,
    tag: &str,
    metadata: HashMap<String, String>,
) -> Result<(), Error>
```

## Trait Implementations

### Clone
```text
fn clone(&self) -> Tags<'a>
fn clone_from(&mut self, source: &Self)
```

### Debug
```text
fn fmt(&self, f: &mut Formatter<'_>) -> Result<(), Error>
```
