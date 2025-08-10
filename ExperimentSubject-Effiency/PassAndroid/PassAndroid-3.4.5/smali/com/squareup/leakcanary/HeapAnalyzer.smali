.class public final Lcom/squareup/leakcanary/HeapAnalyzer;
.super Ljava/lang/Object;
.source "HeapAnalyzer.java"


# static fields
.field private static final ANONYMOUS_CLASS_NAME_PATTERN:Ljava/lang/String; = "^.+\\$\\d+$"


# instance fields
.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;


# direct methods
.method public constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 0
    .param p1, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 67
    return-void
.end method

.method private buildLeakElement(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTraceElement;
    .locals 16
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 273
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    if-nez v1, :cond_0

    .line 275
    const/4 v1, 0x0

    .line 329
    :goto_0
    return-object v1

    .line 277
    :cond_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    iget-object v11, v1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 279
    .local v11, "holder":Lcom/squareup/haha/perflib/Instance;
    instance-of v1, v11, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v1, :cond_1

    .line 280
    const/4 v1, 0x0

    goto :goto_0

    .line 282
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/squareup/leakcanary/LeakNode;->referenceType:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .line 283
    .local v3, "type":Lcom/squareup/leakcanary/LeakTraceElement$Type;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/squareup/leakcanary/LeakNode;->referenceName:Ljava/lang/String;

    .line 287
    .local v2, "referenceName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 288
    .local v6, "extra":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/squareup/leakcanary/HeapAnalyzer;->describeFields(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v8

    .line 290
    .local v8, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/squareup/leakcanary/HeapAnalyzer;->getClassName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "className":Ljava/lang/String;
    instance-of v1, v11, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v1, :cond_2

    .line 293
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->CLASS:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 329
    .local v4, "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    :goto_1
    new-instance v1, Lcom/squareup/leakcanary/LeakTraceElement;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/squareup/leakcanary/LeakNode;->exclusion:Lcom/squareup/leakcanary/Exclusion;

    invoke-direct/range {v1 .. v8}, Lcom/squareup/leakcanary/LeakTraceElement;-><init>(Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;Lcom/squareup/leakcanary/LeakTraceElement$Holder;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/Exclusion;Ljava/util/List;)V

    goto :goto_0

    .line 294
    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    :cond_2
    instance-of v1, v11, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v1, :cond_3

    .line 295
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    goto :goto_1

    .line 297
    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    :cond_3
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v10

    .line 298
    .local v10, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-static {v10}, Lcom/squareup/leakcanary/HahaHelper;->extendsThread(Lcom/squareup/haha/perflib/ClassObj;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 299
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 300
    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-static {v11}, Lcom/squareup/leakcanary/HahaHelper;->threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v15

    .line 301
    .local v15, "threadName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(named \'"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "\')"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    goto :goto_1

    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v15    # "threadName":Ljava/lang/String;
    :cond_4
    const-string v1, "^.+\\$\\d+$"

    invoke-virtual {v5, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 303
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "parentClassName":Ljava/lang/String;
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 305
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 310
    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    :try_start_0
    invoke-virtual {v10}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 311
    .local v9, "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v13

    .line 312
    .local v13, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v13

    if-lez v1, :cond_5

    .line 313
    const/4 v1, 0x0

    aget-object v12, v13, v1

    .line 314
    .local v12, "implementedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(anonymous implementation of "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 315
    goto/16 :goto_1

    .line 316
    .end local v12    # "implementedInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const-string v6, "(anonymous subclass of java.lang.Object)"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 321
    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v9    # "actualClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 323
    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(anonymous subclass of "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 326
    .end local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v14    # "parentClassName":Ljava/lang/String;
    :cond_7
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .restart local v4    # "holderType":Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    goto/16 :goto_1

    .line 318
    .restart local v14    # "parentClassName":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method private buildLeakTrace(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTrace;
    .locals 8
    .param p1, "leakingNode"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    const/4 v1, 0x0

    .line 259
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v7, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/LeakTraceElement;>;"
    new-instance v0, Lcom/squareup/leakcanary/LeakNode;

    move-object v2, v1

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/leakcanary/Exclusion;Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 262
    .local v0, "node":Lcom/squareup/leakcanary/LeakNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0, v0}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakElement(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v6

    .line 264
    .local v6, "element":Lcom/squareup/leakcanary/LeakTraceElement;
    if-eqz v6, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-interface {v7, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 267
    :cond_0
    iget-object v0, v0, Lcom/squareup/leakcanary/LeakNode;->parent:Lcom/squareup/leakcanary/LeakNode;

    .line 268
    goto :goto_0

    .line 269
    .end local v6    # "element":Lcom/squareup/leakcanary/LeakTraceElement;
    :cond_1
    new-instance v1, Lcom/squareup/leakcanary/LeakTrace;

    invoke-direct {v1, v7}, Lcom/squareup/leakcanary/LeakTrace;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private computeIgnoredBitmapRetainedSize(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)J
    .locals 12
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p2, "leakingInstance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 214
    const-wide/16 v2, 0x0

    .line 215
    .local v2, "bitmapRetainedSize":J
    const-string v9, "android.graphics.Bitmap"

    invoke-virtual {p1, v9}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .line 217
    .local v0, "bitmapClass":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/perflib/Instance;

    .line 218
    .local v1, "bitmapInstance":Lcom/squareup/haha/perflib/Instance;
    invoke-direct {p0, p2, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->isIgnoredDominator(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 219
    invoke-static {v1}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v10

    const-string v11, "mBuffer"

    invoke-static {v10, v11}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 221
    .local v8, "mBufferInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    if-eqz v8, :cond_0

    .line 224
    invoke-virtual {v8}, Lcom/squareup/haha/perflib/ArrayInstance;->getTotalRetainedSize()J

    move-result-wide v6

    .line 225
    .local v6, "bufferSize":J
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/Instance;->getTotalRetainedSize()J

    move-result-wide v4

    .line 228
    .local v4, "bitmapSize":J
    cmp-long v10, v4, v6

    if-gez v10, :cond_1

    .line 229
    add-long/2addr v4, v6

    .line 231
    :cond_1
    add-long/2addr v2, v4

    goto :goto_0

    .line 234
    .end local v1    # "bitmapInstance":Lcom/squareup/haha/perflib/Instance;
    .end local v4    # "bitmapSize":J
    .end local v6    # "bufferSize":J
    .end local v8    # "mBufferInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    :cond_2
    return-wide v2
.end method

.method private describeFields(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;
    .locals 12
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/haha/perflib/Instance;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v5, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    instance-of v9, p1, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v9, :cond_0

    move-object v2, p1

    .line 337
    check-cast v2, Lcom/squareup/haha/perflib/ClassObj;

    .line 338
    .local v2, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 339
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/Field;

    .line 340
    .local v4, "field":Lcom/squareup/haha/perflib/Field;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 341
    .local v7, "value":Ljava/lang/Object;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "static "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    .end local v2    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    .end local v4    # "field":Lcom/squareup/haha/perflib/Field;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v9, p1, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v9, :cond_1

    move-object v0, p1

    .line 344
    check-cast v0, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 345
    .local v0, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v9

    sget-object v10, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v9, v10, :cond_3

    .line 346
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v8

    .line 347
    .local v8, "values":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v9, v8

    if-ge v6, v9, :cond_3

    .line 348
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 352
    .end local v0    # "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v6    # "i":I
    .end local v8    # "values":[Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    .line 353
    .restart local v2    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 354
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "static "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    :cond_2
    move-object v1, p1

    .line 356
    check-cast v1, Lcom/squareup/haha/perflib/ClassInstance;

    .line 357
    .local v1, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 358
    .local v4, "field":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-static {v4}, Lcom/squareup/leakcanary/HahaHelper;->fieldToString(Lcom/squareup/haha/perflib/ClassInstance$FieldValue;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 361
    .end local v1    # "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    .end local v2    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .end local v4    # "field":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    :cond_3
    return-object v5
.end method

.method private findLeakTrace(JLcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 11
    .param p1, "analysisStartNanoTime"    # J
    .param p3, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p4, "leakingRef"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 176
    new-instance v8, Lcom/squareup/leakcanary/ShortestPathFinder;

    iget-object v1, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    invoke-direct {v8, v1}, Lcom/squareup/leakcanary/ShortestPathFinder;-><init>(Lcom/squareup/leakcanary/ExcludedRefs;)V

    .line 177
    .local v8, "pathFinder":Lcom/squareup/leakcanary/ShortestPathFinder;
    invoke-virtual {v8, p3, p4}, Lcom/squareup/leakcanary/ShortestPathFinder;->findPath(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/ShortestPathFinder$Result;

    move-result-object v9

    .line 180
    .local v9, "result":Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    if-nez v1, :cond_0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v1

    .line 200
    :goto_0
    return-object v1

    .line 184
    :cond_0
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {p0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakTrace(Lcom/squareup/leakcanary/LeakNode;)Lcom/squareup/leakcanary/LeakTrace;

    move-result-object v3

    .line 186
    .local v3, "leakTrace":Lcom/squareup/leakcanary/LeakTrace;
    invoke-virtual {p4}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "className":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/squareup/haha/perflib/Snapshot;->computeDominators()V

    .line 191
    iget-object v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->leakingNode:Lcom/squareup/leakcanary/LeakNode;

    iget-object v0, v1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    .line 193
    .local v0, "leakingInstance":Lcom/squareup/haha/perflib/Instance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Instance;->getTotalRetainedSize()J

    move-result-wide v4

    .line 196
    .local v4, "retainedSize":J
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-gt v1, v6, :cond_1

    .line 197
    invoke-direct {p0, p3, v0}, Lcom/squareup/leakcanary/HeapAnalyzer;->computeIgnoredBitmapRetainedSize(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 200
    :cond_1
    iget-boolean v1, v9, Lcom/squareup/leakcanary/ShortestPathFinder$Result;->excludingKnownLeaks:Z

    .line 201
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v6

    .line 200
    invoke-static/range {v1 .. v7}, Lcom/squareup/leakcanary/AnalysisResult;->leakDetected(ZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;JJ)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v1

    goto :goto_0
.end method

.method private findLeakingReference(Ljava/lang/String;Lcom/squareup/haha/perflib/Snapshot;)Lcom/squareup/haha/perflib/Instance;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 159
    const-class v5, Lcom/squareup/leakcanary/KeyedWeakReference;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v3

    .line 160
    .local v3, "refClass":Lcom/squareup/haha/perflib/ClassObj;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v2, "keysFound":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 162
    .local v0, "instance":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v0}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v4

    .line 163
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v6, "key"

    invoke-static {v4, v6}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/squareup/leakcanary/HahaHelper;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "keyCandidate":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    const-string v5, "referent"

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/haha/perflib/Instance;

    return-object v5

    .line 167
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    .end local v0    # "instance":Lcom/squareup/haha/perflib/Instance;
    .end local v1    # "keyCandidate":Ljava/lang/String;
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find weak reference with key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private generateRootKey(Lcom/squareup/haha/perflib/RootObj;)Ljava/lang/String;
    .locals 6
    .param p1, "root"    # Lcom/squareup/haha/perflib/RootObj;

    .prologue
    .line 155
    const-string v0, "%s@0x%08x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootType;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/RootObj;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getClassName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;
    .locals 4
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 366
    instance-of v3, p1, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 367
    check-cast v2, Lcom/squareup/haha/perflib/ClassObj;

    .line 368
    .local v2, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 376
    .end local v2    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    .local v1, "className":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 369
    .end local v1    # "className":Ljava/lang/String;
    :cond_0
    instance-of v3, p1, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 370
    check-cast v0, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 371
    .local v0, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ArrayInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 372
    .restart local v1    # "className":Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0    # "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    .end local v1    # "className":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    .line 374
    .restart local v2    # "classObj":Lcom/squareup/haha/perflib/ClassObj;
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "className":Ljava/lang/String;
    goto :goto_0
.end method

.method private isIgnoredDominator(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)Z
    .locals 4
    .param p1, "dominator"    # Lcom/squareup/haha/perflib/Instance;
    .param p2, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "foundNativeRoot":Z
    :cond_0
    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getImmediateDominator()Lcom/squareup/haha/perflib/Instance;

    move-result-object v1

    .line 241
    .local v1, "immediateDominator":Lcom/squareup/haha/perflib/Instance;
    instance-of v2, v1, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/squareup/haha/perflib/RootObj;

    .line 242
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v2

    sget-object v3, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    if-ne v2, v3, :cond_1

    .line 244
    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getNextInstanceToGcRoot()Lcom/squareup/haha/perflib/Instance;

    move-result-object p2

    .line 245
    const/4 v0, 0x1

    .line 249
    :goto_0
    if-nez p2, :cond_2

    .line 250
    const/4 v0, 0x0

    .line 253
    .end local v0    # "foundNativeRoot":Z
    :goto_1
    return v0

    .line 247
    .restart local v0    # "foundNativeRoot":Z
    :cond_1
    move-object p2, v1

    goto :goto_0

    .line 252
    :cond_2
    if-ne p2, p1, :cond_0

    goto :goto_1
.end method

.method private since(J)J
    .locals 5
    .param p1, "analysisStartNanoTime"    # J

    .prologue
    .line 380
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public checkForLeak(Ljava/io/File;Ljava/lang/String;)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 10
    .param p1, "heapDumpFile"    # Ljava/io/File;
    .param p2, "referenceKey"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 106
    .local v0, "analysisStartNanoTime":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 107
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File does not exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, "exception":Ljava/lang/Exception;
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    .line 126
    .end local v4    # "exception":Ljava/lang/Exception;
    :goto_0
    return-object v8

    .line 112
    :cond_0
    :try_start_0
    new-instance v2, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;

    invoke-direct {v2, p1}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;-><init>(Ljava/io/File;)V

    .line 113
    .local v2, "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    new-instance v6, Lcom/squareup/haha/perflib/HprofParser;

    invoke-direct {v6, v2}, Lcom/squareup/haha/perflib/HprofParser;-><init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V

    .line 114
    .local v6, "parser":Lcom/squareup/haha/perflib/HprofParser;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/HprofParser;->parse()Lcom/squareup/haha/perflib/Snapshot;

    move-result-object v7

    .line 115
    .local v7, "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    invoke-virtual {p0, v7}, Lcom/squareup/leakcanary/HeapAnalyzer;->deduplicateGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 117
    invoke-direct {p0, p2, v7}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakingReference(Ljava/lang/String;Lcom/squareup/haha/perflib/Snapshot;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v5

    .line 120
    .local v5, "leakingRef":Lcom/squareup/haha/perflib/Instance;
    if-nez v5, :cond_1

    .line 121
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0, v0, v1, v7, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakTrace(JLcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/AnalysisResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 125
    .end local v2    # "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    .end local v5    # "leakingRef":Lcom/squareup/haha/perflib/Instance;
    .end local v6    # "parser":Lcom/squareup/haha/perflib/HprofParser;
    .end local v7    # "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    :catch_0
    move-exception v3

    .line 126
    .local v3, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v8

    invoke-static {v3, v8, v9}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Throwable;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v8

    goto :goto_0
.end method

.method deduplicateGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 6
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    .line 135
    new-instance v3, Lcom/squareup/haha/trove/THashMap;

    invoke-direct {v3}, Lcom/squareup/haha/trove/THashMap;-><init>()V

    .line 137
    .local v3, "uniqueRootMap":Lcom/squareup/haha/trove/THashMap;, "Lcom/squareup/haha/trove/THashMap<Ljava/lang/String;Lcom/squareup/haha/perflib/RootObj;>;"
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v0

    .line 138
    .local v0, "gcRoots":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/squareup/haha/perflib/RootObj;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/haha/perflib/RootObj;

    .line 139
    .local v2, "root":Lcom/squareup/haha/perflib/RootObj;
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/HeapAnalyzer;->generateRootKey(Lcom/squareup/haha/perflib/RootObj;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/squareup/haha/trove/THashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 141
    invoke-virtual {v3, v1, v2}, Lcom/squareup/haha/trove/THashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "root":Lcom/squareup/haha/perflib/RootObj;
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 147
    new-instance v4, Lcom/squareup/leakcanary/HeapAnalyzer$1;

    invoke-direct {v4, p0, v0, v3}, Lcom/squareup/leakcanary/HeapAnalyzer$1;-><init>(Lcom/squareup/leakcanary/HeapAnalyzer;Ljava/util/Collection;Lcom/squareup/haha/trove/THashMap;)V

    invoke-virtual {v3, v4}, Lcom/squareup/haha/trove/THashMap;->forEach(Lcom/squareup/haha/trove/TObjectProcedure;)Z

    .line 152
    return-void
.end method

.method public findTrackedReferences(Ljava/io/File;)Ljava/util/List;
    .locals 17
    .param p1, "heapDumpFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/TrackedReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 71
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File does not exist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 74
    :cond_0
    :try_start_0
    new-instance v1, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/squareup/haha/perflib/io/MemoryMappedFileBuffer;-><init>(Ljava/io/File;)V

    .line 75
    .local v1, "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    new-instance v8, Lcom/squareup/haha/perflib/HprofParser;

    invoke-direct {v8, v1}, Lcom/squareup/haha/perflib/HprofParser;-><init>(Lcom/squareup/haha/perflib/io/HprofBuffer;)V

    .line 76
    .local v8, "parser":Lcom/squareup/haha/perflib/HprofParser;
    invoke-virtual {v8}, Lcom/squareup/haha/perflib/HprofParser;->parse()Lcom/squareup/haha/perflib/Snapshot;

    move-result-object v11

    .line 77
    .local v11, "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/squareup/leakcanary/HeapAnalyzer;->deduplicateGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 79
    const-class v14, Lcom/squareup/leakcanary/KeyedWeakReference;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/squareup/haha/perflib/Snapshot;->findClass(Ljava/lang/String;)Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v9

    .line 80
    .local v9, "refClass":Lcom/squareup/haha/perflib/ClassObj;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v10, "references":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/TrackedReference;>;"
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/ClassObj;->getInstancesList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/squareup/haha/perflib/Instance;

    .line 82
    .local v13, "weakRef":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v13}, Lcom/squareup/leakcanary/HahaHelper;->classInstanceValues(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v12

    .line 83
    .local v12, "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    const-string v15, "key"

    invoke-static {v12, v15}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/squareup/leakcanary/HahaHelper;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "key":Ljava/lang/String;
    const-string v15, "name"

    invoke-static {v12, v15}, Lcom/squareup/leakcanary/HahaHelper;->hasField(Ljava/util/List;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "name"

    invoke-static {v12, v15}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lcom/squareup/leakcanary/HahaHelper;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "name":Ljava/lang/String;
    :goto_1
    const-string v15, "referent"

    invoke-static {v12, v15}, Lcom/squareup/leakcanary/HahaHelper;->fieldValue(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/haha/perflib/Instance;

    .line 87
    .local v5, "instance":Lcom/squareup/haha/perflib/Instance;
    if-eqz v5, :cond_1

    .line 88
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;->getClassName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/squareup/leakcanary/HeapAnalyzer;->describeFields(Lcom/squareup/haha/perflib/Instance;)Ljava/util/List;

    move-result-object v4

    .line 90
    .local v4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Lcom/squareup/leakcanary/TrackedReference;

    invoke-direct {v15, v6, v7, v2, v4}, Lcom/squareup/leakcanary/TrackedReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1    # "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    .end local v2    # "className":Ljava/lang/String;
    .end local v4    # "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "instance":Lcom/squareup/haha/perflib/Instance;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "parser":Lcom/squareup/haha/perflib/HprofParser;
    .end local v9    # "refClass":Lcom/squareup/haha/perflib/ClassObj;
    .end local v10    # "references":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/TrackedReference;>;"
    .end local v11    # "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    .end local v12    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    .end local v13    # "weakRef":Lcom/squareup/haha/perflib/Instance;
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 85
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v1    # "buffer":Lcom/squareup/haha/perflib/io/HprofBuffer;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "parser":Lcom/squareup/haha/perflib/HprofParser;
    .restart local v9    # "refClass":Lcom/squareup/haha/perflib/ClassObj;
    .restart local v10    # "references":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/TrackedReference;>;"
    .restart local v11    # "snapshot":Lcom/squareup/haha/perflib/Snapshot;
    .restart local v12    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    .restart local v13    # "weakRef":Lcom/squareup/haha/perflib/Instance;
    :cond_2
    :try_start_1
    const-string v7, "(No name field)"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    .end local v6    # "key":Ljava/lang/String;
    .end local v12    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/haha/perflib/ClassInstance$FieldValue;>;"
    .end local v13    # "weakRef":Lcom/squareup/haha/perflib/Instance;
    :cond_3
    return-object v10
.end method
