.class public final Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;
.super Ljava/lang/Object;
.source "AndroidFileSystemPassStore.kt"

# interfaces
.implements Lorg/ligi/passandroid/model/PassStore;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0019H\u0016J\u0012\u0010!\u001a\u0004\u0018\u00010\u00122\u0006\u0010 \u001a\u00020\u0019H\u0016J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u0019H\u0016J\u0008\u0010#\u001a\u00020$H\u0016J\u0012\u0010%\u001a\u0004\u0018\u00010\u00122\u0006\u0010 \u001a\u00020\u0019H\u0002J\u0010\u0010&\u001a\u00020$2\u0006\u0010\'\u001a\u00020\u0012H\u0016J\u0010\u0010(\u001a\u00020$2\u0006\u0010)\u001a\u00020\u0019H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00120\u0018X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;",
        "Lorg/ligi/passandroid/model/PassStore;",
        "context",
        "Landroid/content/Context;",
        "settings",
        "Lorg/ligi/passandroid/model/Settings;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "bus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "(Landroid/content/Context;Lorg/ligi/passandroid/model/Settings;Lcom/squareup/moshi/Moshi;Lorg/greenrobot/eventbus/EventBus;)V",
        "classifier",
        "Lorg/ligi/passandroid/model/PassClassifier;",
        "getClassifier",
        "()Lorg/ligi/passandroid/model/PassClassifier;",
        "classifier$delegate",
        "Lkotlin/Lazy;",
        "currentPass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "getCurrentPass",
        "()Lorg/ligi/passandroid/model/pass/Pass;",
        "setCurrentPass",
        "(Lorg/ligi/passandroid/model/pass/Pass;)V",
        "passMap",
        "Ljava/util/HashMap;",
        "",
        "getPassMap",
        "()Ljava/util/HashMap;",
        "path",
        "Ljava/io/File;",
        "deletePassWithId",
        "",
        "id",
        "getPassbookForId",
        "getPathForID",
        "notifyChange",
        "",
        "readPass",
        "save",
        "pass",
        "syncPassStoreWithClassifier",
        "defaultTopic",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final bus:Lorg/greenrobot/eventbus/EventBus;

.field private final classifier$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private currentPass:Lorg/ligi/passandroid/model/pass/Pass;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final moshi:Lcom/squareup/moshi/Moshi;

.field private final passMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final path:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "classifier"

    const-string v5, "getClassifier()Lorg/ligi/passandroid/model/PassClassifier;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/ligi/passandroid/model/Settings;Lcom/squareup/moshi/Moshi;Lorg/greenrobot/eventbus/EventBus;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "settings"    # Lorg/ligi/passandroid/model/Settings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "moshi"    # Lcom/squareup/moshi/Moshi;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "bus"    # Lorg/greenrobot/eventbus/EventBus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshi"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->context:Landroid/content/Context;

    iput-object p3, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->moshi:Lcom/squareup/moshi/Moshi;

    iput-object p4, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->bus:Lorg/greenrobot/eventbus/EventBus;

    .line 19
    invoke-interface {p2}, Lorg/ligi/passandroid/model/Settings;->getPassesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->path:Ljava/io/File;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->passMap:Ljava/util/HashMap;

    .line 25
    new-instance v0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;

    invoke-direct {v0, p0, p2}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore$classifier$2;-><init>(Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;Lorg/ligi/passandroid/model/Settings;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->classifier$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMoshi$p(Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;)Lcom/squareup/moshi/Moshi;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->moshi:Lcom/squareup/moshi/Moshi;

    return-object v0
.end method

.method private final readPass(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;
    .locals 11
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 57
    .local v6, "pathForID":Ljava/io/File;
    iget-object v8, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "context.resources"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v9, "context.resources.configuration.locale"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "language":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v7

    .line 63
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v8, "main.json"

    invoke-direct {v2, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v2, "file":Ljava/io/File;
    check-cast v7, Lorg/ligi/passandroid/model/pass/Pass;

    .line 65
    .local v7, "result":Lorg/ligi/passandroid/model/pass/Pass;
    const/4 v1, 0x1

    .line 66
    .local v1, "dirty":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 67
    iget-object v8, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->moshi:Lcom/squareup/moshi/Moshi;

    const-class v9, Lorg/ligi/passandroid/model/pass/PassImpl;

    invoke-virtual {v8, v9}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v4

    .line 68
    .local v4, "jsonAdapter":Lcom/squareup/moshi/JsonAdapter;
    const/4 v1, 0x0

    .line 69
    nop

    .line 70
    :try_start_0
    invoke-static {v2}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v8

    invoke-static {v8}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/ligi/passandroid/model/pass/Pass;

    move-object v7, v0
    :try_end_0
    .catch Lcom/squareup/moshi/JsonDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v4    # "jsonAdapter":Lcom/squareup/moshi/JsonAdapter;
    :cond_2
    :goto_1
    if-nez v7, :cond_3

    new-instance v8, Ljava/io/File;

    const-string v9, "data.json"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 77
    sget-object v8, Lorg/ligi/passandroid/reader/PassReader;->INSTANCE:Lorg/ligi/passandroid/reader/PassReader;

    invoke-virtual {v8, v6}, Lorg/ligi/passandroid/reader/PassReader;->read(Ljava/io/File;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v7

    .line 78
    new-instance v8, Ljava/io/File;

    const-string v9, "data.json"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 81
    :cond_3
    if-nez v7, :cond_4

    new-instance v8, Ljava/io/File;

    const-string v9, "pass.json"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 82
    sget-object v8, Lorg/ligi/passandroid/reader/AppleStylePassReader;->INSTANCE:Lorg/ligi/passandroid/reader/AppleStylePassReader;

    const-string v9, "language"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->context:Landroid/content/Context;

    invoke-virtual {v8, v6, v5, v9}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->read(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v7

    .line 85
    :cond_4
    if-eqz v7, :cond_0

    .line 86
    if-eqz v1, :cond_5

    .line 87
    invoke-virtual {p0, v7}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->save(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 89
    :cond_5
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPassMap()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->notifyChange()V

    goto :goto_0

    .line 71
    .restart local v4    # "jsonAdapter":Lcom/squareup/moshi/JsonAdapter;
    :catch_0
    move-exception v3

    .line 72
    .local v3, "ignored":Lcom/squareup/moshi/JsonDataException;
    sget-object v8, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v8}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v8

    const-string v9, "invalid main.json"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public deletePassWithId(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    move-result v0

    .line 102
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPassMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/ligi/passandroid/model/PassClassifier;->removePass(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->notifyChange()V

    .line 107
    :cond_0
    return v0
.end method

.method public getClassifier()Lorg/ligi/passandroid/model/PassClassifier;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->classifier$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/PassClassifier;

    return-object v0
.end method

.method public getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    return-object v0
.end method

.method public getPassMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->passMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public bridge synthetic getPassMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPassMap()Ljava/util/HashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getPassbookForId(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPassMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/Pass;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->readPass(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v0

    goto :goto_0
.end method

.method public getPathForID(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->path:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public notifyChange()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->bus:Lorg/greenrobot/eventbus/EventBus;

    sget-object v1, Lorg/ligi/passandroid/events/PassStoreChangeEvent;->INSTANCE:Lorg/ligi/passandroid/events/PassStoreChangeEvent;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public save(Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 6
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v4, "pass"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v4, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->moshi:Lcom/squareup/moshi/Moshi;

    const-class v5, Lorg/ligi/passandroid/model/pass/PassImpl;

    invoke-virtual {v4, v5}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v1

    .line 33
    .local v1, "jsonAdapter":Lcom/squareup/moshi/JsonAdapter;
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 35
    .local v3, "pathForID":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 39
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v5, "main.json"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v4

    invoke-static {v4}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 41
    .local v0, "buffer":Lokio/BufferedSink;
    sget-boolean v4, Lorg/ligi/passandroid/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 42
    invoke-static {v0}, Lcom/squareup/moshi/JsonWriter;->of(Lokio/BufferedSink;)Lcom/squareup/moshi/JsonWriter;

    move-result-object v2

    .line 43
    .local v2, "of":Lcom/squareup/moshi/JsonWriter;
    const-string v4, "  "

    invoke-virtual {v2, v4}, Lcom/squareup/moshi/JsonWriter;->setIndent(Ljava/lang/String;)V

    move-object v4, p1

    .line 44
    check-cast v4, Lorg/ligi/passandroid/model/pass/PassImpl;

    invoke-virtual {v1, v2, v4}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Object;)V

    .line 45
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 46
    invoke-virtual {v2}, Lcom/squareup/moshi/JsonWriter;->close()V

    .line 50
    .end local v2    # "of":Lcom/squareup/moshi/JsonWriter;
    :goto_0
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPassMap()Ljava/util/HashMap;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void

    :cond_1
    move-object v4, p1

    .line 48
    check-cast v4, Lorg/ligi/passandroid/model/pass/PassImpl;

    invoke-virtual {v1, v0, v4}, Lcom/squareup/moshi/JsonAdapter;->toJson(Lokio/BufferedSink;Ljava/lang/Object;)V

    .line 49
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    goto :goto_0
.end method

.method public setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/model/pass/Pass;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    iput-object p1, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->currentPass:Lorg/ligi/passandroid/model/pass/Pass;

    return-void
.end method

.method public syncPassStoreWithClassifier(Ljava/lang/String;)V
    .locals 12
    .param p1, "defaultTopic"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const-string v9, "defaultTopic"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v9

    invoke-virtual {v9}, Lorg/ligi/passandroid/model/PassClassifier;->getTopicByIdMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 132
    .local v0, "$receiver$iv":Ljava/lang/Iterable;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 133
    .local v2, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 119
    .local v5, "it":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getPassbookForId(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v9, v8

    goto :goto_1

    .end local v4    # "element$iv$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/lang/String;
    :cond_2
    move-object v7, v2

    .line 134
    check-cast v7, Ljava/util/List;

    .line 121
    .local v7, "keysToRemove":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 122
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/ligi/passandroid/model/PassClassifier;->getTopicByIdMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 125
    .end local v6    # "key":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->path:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 126
    .local v1, "allPasses":[Ljava/io/File;
    if-eqz v1, :cond_4

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 135
    .local v0, "$receiver$iv":[Ljava/lang/Object;
    :goto_3
    array-length v9, v0

    if-ge v8, v9, :cond_4

    aget-object v3, v0, v8

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Ljava/io/File;

    .line 127
    .local v5, "it":Ljava/io/File;
    invoke-virtual {p0}, Lorg/ligi/passandroid/model/AndroidFileSystemPassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v9

    const-string v10, "it"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "it.name"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10, p1}, Lorg/ligi/passandroid/model/PassClassifier;->getTopic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 129
    .end local v0    # "$receiver$iv":[Ljava/lang/Object;
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Ljava/io/File;
    :cond_4
    return-void
.end method
