# Create a Document from Text

> Creates a new document within an existing knowledge base directly from text content.



## OpenAPI

````yaml en/api-reference/openapi_knowledge.json post /datasets/{dataset_id}/document/create-by-text
openapi: 3.0.1
info:
  title: Knowledge API
  description: >-
    API for managing knowledge bases (datasets), documents, and segments,
    including creation, retrieval, and configuration.
  version: 1.0.0
servers:
  - url: '{apiBaseUrl}'
    description: The base URL for the Knowledge API.
    variables:
      apiBaseUrl:
        default: https://api.dify.ai/v1
        description: Actual base URL of the API
security:
  - ApiKeyAuth: []
tags:
  - name: Datasets
    description: Operations related to managing knowledge bases (datasets).
  - name: Documents
    description: >-
      Operations for creating, updating, and managing documents within a
      dataset.
  - name: Chunks
    description: Operations for managing document chunks (segments).
  - name: Metadata & Tags
    description: Operations for managing dataset tags and metadata.
  - name: Models
    description: Operations for retrieving available models.
paths:
  /datasets/{dataset_id}/document/create-by-text:
    post:
      tags:
        - Documents
      summary: Create a Document from Text
      description: >-
        Creates a new document within an existing knowledge base directly from
        text content.
      operationId: createDocumentFromText
      parameters:
        - name: dataset_id
          in: path
          required: true
          description: The ID of the knowledge base to add the document to.
          schema:
            type: string
            format: uuid
      requestBody:
        required: true
        content:
          application/json:
            schema:
              $ref: '#/components/schemas/CreateDocumentByTextRequest'
      responses:
        '200':
          description: Document created successfully and is being indexed.
          content:
            application/json:
              schema:
                $ref: '#/components/schemas/DocumentCreationResponse'
components:
  schemas:
    CreateDocumentByTextRequest:
      type: object
      required:
        - name
        - text
      properties:
        name:
          type: string
          description: Name of the document.
        text:
          type: string
          description: Full text content of the document.
        indexing_technique:
          type: string
          description: Indexing technique for the document.
          enum:
            - high_quality
            - economy
        doc_form:
          type: string
          description: Format of the indexed content.
          enum:
            - text_model
            - hierarchical_model
            - qa_model
        doc_language:
          type: string
          description: Language of the document, important for Q&A mode.
          example: English
        process_rule:
          $ref: '#/components/schemas/ProcessRule'
        retrieval_model:
          $ref: '#/components/schemas/RetrievalModel'
        embedding_model:
          type: string
          description: Name of the embedding model to use.
        embedding_model_provider:
          type: string
          description: Provider of the embedding model.
    DocumentCreationResponse:
      type: object
      properties:
        document:
          $ref: '#/components/schemas/Document'
        batch:
          type: string
          description: A batch identifier for tracking indexing progress.
    ProcessRule:
      type: object
      description: >-
        A set of rules for processing a document, including cleaning and
        segmentation.
      properties:
        mode:
          type: string
          description: 'The processing mode: automatic, custom, or hierarchical.'
          enum:
            - automatic
            - custom
            - hierarchical
        rules:
          type: object
          description: >-
            The specific rules to apply, used when mode is 'custom' or
            'hierarchical'.
          properties:
            pre_processing_rules:
              type: array
              items:
                $ref: '#/components/schemas/PreprocessingRule'
            segmentation:
              $ref: '#/components/schemas/SegmentationRule'
            parent_mode:
              type: string
              description: Retrieval mode for parent chunks in hierarchical mode.
              enum:
                - full-doc
                - paragraph
            subchunk_segmentation:
              $ref: '#/components/schemas/SubChunkSegmentationRule'
          nullable: true
    RetrievalModel:
      type: object
      properties:
        search_method:
          type: string
          description: The search method to use for retrieval.
          enum:
            - hybrid_search
            - semantic_search
            - full_text_search
            - keyword_search
        reranking_enable:
          type: boolean
          description: Whether to enable a rerank model to improve search results.
        reranking_mode:
          type: string
          description: The reranking mode.
          default: reranking_model
          enum:
            - reranking_model
            - weighted_score
        reranking_model:
          type: object
          description: Configuration for the rerank model.
          properties:
            reranking_provider_name:
              type: string
              description: The provider of the rerank model.
            reranking_model_name:
              type: string
              description: The name of the rerank model.
          nullable: true
        top_k:
          type: integer
          description: The number of top matching results to return.
        score_threshold_enabled:
          type: boolean
          description: Whether to apply a score threshold to filter results.
        score_threshold:
          type: number
          format: float
          description: The minimum score for a result to be included.
          nullable: true
        weights:
          type: number
          format: float
          description: The weight of semantic search in a hybrid search mode.
          nullable: true
    Document:
      type: object
      properties:
        id:
          type: string
          format: uuid
        position:
          type: integer
        data_source_type:
          type: string
        data_source_info:
          type: object
          nullable: true
        dataset_process_rule_id:
          type: string
          format: uuid
          nullable: true
        name:
          type: string
        created_from:
          type: string
        created_by:
          type: string
          format: uuid
        created_at:
          type: integer
          format: int64
        tokens:
          type: integer
        indexing_status:
          type: string
        error:
          type: string
          nullable: true
        enabled:
          type: boolean
        disabled_at:
          type: integer
          format: int64
          nullable: true
        disabled_by:
          type: string
          format: uuid
          nullable: true
        archived:
          type: boolean
        display_status:
          type: string
        word_count:
          type: integer
        hit_count:
          type: integer
        doc_form:
          type: string
    PreprocessingRule:
      type: object
      description: A rule for preprocessing document content.
      properties:
        id:
          type: string
          description: The unique identifier for the preprocessing rule.
          enum:
            - remove_extra_spaces
            - remove_urls_emails
        enabled:
          type: boolean
          description: Whether this rule is enabled.
    SegmentationRule:
      type: object
      description: Rules for segmenting document content into chunks.
      properties:
        separator:
          type: string
          description: The custom delimiter used to separate segments.
        max_tokens:
          type: integer
          description: The maximum number of tokens allowed in a single segment.
    SubChunkSegmentationRule:
      type: object
      description: >-
        Rules for segmenting parent chunks into smaller child chunks (for
        hierarchical mode).
      properties:
        separator:
          type: string
          description: The delimiter for sub-chunking.
        max_tokens:
          type: integer
          description: The maximum token length for a sub-chunk.
        chunk_overlap:
          type: integer
          description: The number of overlapping tokens between adjacent sub-chunks.
  securitySchemes:
    ApiKeyAuth:
      type: http
      scheme: bearer
      bearerFormat: API_KEY
      description: >-
        API Key authentication. For all API requests, include your API Key in
        the `Authorization` HTTP Header, prefixed with 'Bearer '. Example:
        `Authorization: Bearer {API_KEY}`. **Strongly recommend storing your API
        Key on the server-side, not shared or stored on the client-side, to
        avoid possible API-Key leakage that can lead to serious consequences.**

````

---

> To find navigation and other pages in this documentation, fetch the llms.txt file at: https://docs.dify.ai/llms.txt
