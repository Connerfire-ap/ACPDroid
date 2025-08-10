.class public final Luk/co/chrisjenx/calligraphy/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# static fields
.field private static final sCachedFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCachedSpans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Typeface;",
            "Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedSpans:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static getSpan(Landroid/graphics/Typeface;)Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    .locals 2
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .line 55
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedSpans:Ljava/util/Map;

    monitor-enter v0

    .line 57
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    invoke-direct {v1, p0}, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 59
    .local v1, "span":Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v0

    return-object v1

    .line 62
    .end local v1    # "span":Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/chrisjenx/calligraphy/CalligraphyTypefaceSpan;

    monitor-exit v0

    return-object v1

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isLoaded(Landroid/graphics/Typeface;)Z
    .locals 1
    .param p0, "typeface"    # Landroid/graphics/Typeface;

    .line 73
    if-eqz p0, :cond_0

    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static load(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 32
    sget-object v0, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/Map;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 36
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    monitor-exit v0

    return-object v1

    .line 43
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    nop

    .line 44
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Calligraphy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create asset from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Make sure you have passed in the correct path and file name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    sget-object v2, Luk/co/chrisjenx/calligraphy/TypefaceUtils;->sCachedFonts:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    monitor-exit v0

    return-object v3

    .line 45
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
