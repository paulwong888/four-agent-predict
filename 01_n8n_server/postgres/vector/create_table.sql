------------

-- 启用向量扩展
create extension if not exists vector;

-- 创建文档表
create table documents (
  id uuid primary key DEFAULT uuid_generate_v4(),
  content text,          -- 文档内容
  metadata jsonb,        -- 元数据
  embedding vector(1024) -- 向量字段（适用于OpenAI嵌入）
);

ALTER DATABASE postgres SET timezone TO 'Asia/Shanghai';

-- 创建相似性搜索函数
CREATE OR REPLACE FUNCTION match_documents(
  query_embedding vector(1024),  -- 移到前面
  filter JSONB DEFAULT '{}'::JSONB,
  match_count INT DEFAULT 10
)
RETURNS TABLE (
  id UUID,
  content TEXT,
  similarity FLOAT
)
LANGUAGE SQL
AS $$
  SELECT 
    id,
    content,
    1 - (embedding <=> query_embedding) AS similarity
  FROM documents
  WHERE filter @> '{}'::JSONB OR metadata @> filter  -- 假设有 metadata 列
  ORDER BY similarity DESC
  LIMIT match_count;
$$;

