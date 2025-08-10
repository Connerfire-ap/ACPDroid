.class public final Lorg/ligi/passandroid/reader/AppleStylePassReader;
.super Ljava/lang/Object;
.source "AppleStylePassReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\'B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u0002J\"\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0002J$\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0017\u001a\u00020\u000bH\u0002J\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u000bH\u0002J\"\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002J \u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020!J \u0010\"\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020%H\u0002J\u001a\u0010&\u001a\u0004\u0018\u00010\u000b2\u0006\u0010#\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002\u00a8\u0006("
    }
    d2 = {
        "Lorg/ligi/passandroid/reader/AppleStylePassReader;",
        "",
        "()V",
        "addFields",
        "",
        "list",
        "Ljava/util/ArrayList;",
        "Lorg/ligi/passandroid/model/pass/PassField;",
        "type_json",
        "Lorg/json/JSONObject;",
        "fieldsName",
        "",
        "translation",
        "Lorg/ligi/passandroid/model/AppleStylePassTranslation;",
        "hide",
        "",
        "copyBitmapFile",
        "path",
        "Ljava/io/File;",
        "localizedPath",
        "bitmapString",
        "findBitmap",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "findLocalizedPath",
        "language",
        "getField",
        "jsonObject",
        "key",
        "read",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "passFile",
        "context",
        "Landroid/content/Context;",
        "readJsonSafe",
        "json",
        "callback",
        "Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;",
        "readJsonSafeAsOptional",
        "JsonStringReadCallback",
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
.field public static final INSTANCE:Lorg/ligi/passandroid/reader/AppleStylePassReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lorg/ligi/passandroid/reader/AppleStylePassReader;

    invoke-direct {v0}, Lorg/ligi/passandroid/reader/AppleStylePassReader;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/reader/AppleStylePassReader;->INSTANCE:Lorg/ligi/passandroid/reader/AppleStylePassReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final addFields(Ljava/util/ArrayList;Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;Z)V
    .locals 9
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "type_json"    # Lorg/json/JSONObject;
    .param p3, "fieldsName"    # Ljava/lang/String;
    .param p4, "translation"    # Lorg/ligi/passandroid/model/AppleStylePassTranslation;
    .param p5, "hide"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassField;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lorg/ligi/passandroid/model/AppleStylePassTranslation;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 221
    nop

    .line 222
    :try_start_0
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 223
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v2, v5, :cond_0

    .line 224
    :goto_0
    nop

    .line 225
    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 226
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lorg/ligi/passandroid/model/pass/PassField;

    const-string v6, "jsonObject"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "key"

    invoke-direct {p0, v4, v6, p4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->getField(Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;)Ljava/lang/String;

    move-result-object v6

    .line 227
    const-string v7, "label"

    invoke-direct {p0, v4, v7, p4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->getField(Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;)Ljava/lang/String;

    move-result-object v7

    .line 228
    const-string v8, "value"

    invoke-direct {p0, v4, v8, p4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->getField(Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;)Ljava/lang/String;

    move-result-object v8

    .line 226
    invoke-direct {v1, v6, v7, v8, p5}, Lorg/ligi/passandroid/model/pass/PassField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 230
    .local v1, "field":Lorg/ligi/passandroid/model/pass/PassField;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .end local v1    # "field":Lorg/ligi/passandroid/model/pass/PassField;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    if-eq v2, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .local v2, "i":I
    goto :goto_0

    .line 232
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not process PassField from JSON for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cause:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 237
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 238
    .restart local v0    # "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not process PassFields "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from JSON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;)V

    .line 239
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method static bridge synthetic addFields$default(Lorg/ligi/passandroid/reader/AppleStylePassReader;Ljava/util/ArrayList;Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;ZILjava/lang/Object;)V
    .locals 6

    .prologue
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_0

    .line 220
    const/4 v5, 0x0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->addFields(Ljava/util/ArrayList;Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;Z)V

    return-void

    :cond_0
    move v5, p5

    goto :goto_0
.end method

.method private final copyBitmapFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/io/File;
    .param p2, "localizedPath"    # Ljava/lang/String;
    .param p3, "bitmapString"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-direct {p0, p1, p2, p3}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->findBitmap(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 292
    nop

    .line 293
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/ligi/passandroid/model/pass/PassImpl;->Companion:Lorg/ligi/passandroid/model/pass/PassImpl$Companion;

    invoke-virtual {v7}, Lorg/ligi/passandroid/model/pass/PassImpl$Companion;->getFILETYPE_IMAGES()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/OutputStream;

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final findBitmap(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "path"    # Ljava/io/File;
    .param p2, "localizedPath"    # Ljava/lang/String;
    .param p3, "bitmap"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 303
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v3, "searchList":Ljava/util/ArrayList;
    if-eqz p2, :cond_0

    .line 305
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@2x.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@2x.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@2x.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .local v0, "current":Ljava/io/File;
    move-object v2, v4

    .line 314
    check-cast v2, Landroid/graphics/Bitmap;

    .line 316
    .local v2, "res":Landroid/graphics/Bitmap;
    nop

    .line 317
    :try_start_0
    const-string v6, "current"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 323
    :goto_0
    if-eqz v2, :cond_1

    .line 330
    .end local v0    # "current":Ljava/io/File;
    .end local v2    # "res":Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 318
    .restart local v0    # "current":Ljava/io/File;
    .restart local v2    # "res":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 320
    nop

    .line 321
    :try_start_1
    const-string v6, "current"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .end local v0    # "current":Ljava/io/File;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "res":Landroid/graphics/Bitmap;
    :cond_2
    move-object v2, v4

    .line 330
    goto :goto_1

    .line 322
    .restart local v0    # "current":Ljava/io/File;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "res":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method private final findLocalizedPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/io/File;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 245
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lproj"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v1, "localized":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    sget-object v3, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v3}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v3

    const-string v4, "measure_event"

    const-string v5, "pass"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_native_lproj"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, v2}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 259
    :cond_0
    :goto_0
    return-object v2

    .line 252
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "en.lproj"

    invoke-direct {v0, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    .local v0, "fallback":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    sget-object v3, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v3}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v3

    const-string v4, "measure_event"

    const-string v5, "pass"

    const-string v6, "en_lproj"

    invoke-interface {v3, v4, v5, v6, v2}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private final getField(Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;)Ljava/lang/String;
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "translation"    # Lorg/ligi/passandroid/model/AppleStylePassTranslation;

    .prologue
    .line 210
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    nop

    .line 212
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->translate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    :goto_0
    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 215
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final readJsonSafe(Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;

    .prologue
    .line 279
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    nop

    .line 281
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.getString(key)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;->onString(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final readJsonSafeAsOptional(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    nop

    .line 269
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final read(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)Lorg/ligi/passandroid/model/pass/Pass;
    .locals 34
    .param p1, "passFile"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "language"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v4, "passFile"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "language"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v32, Lorg/ligi/passandroid/model/AppleStylePassTranslation;

    invoke-direct/range {v32 .. v32}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;-><init>()V

    .line 33
    .local v32, "translation":Lorg/ligi/passandroid/model/AppleStylePassTranslation;
    new-instance v29, Lorg/ligi/passandroid/model/pass/PassImpl;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "passFile.name"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-direct {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;-><init>(Ljava/lang/String;)V

    .line 35
    .local v29, "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    const/16 v30, 0x0

    check-cast v30, Lorg/json/JSONObject;

    .line 37
    .local v30, "pass_json":Lorg/json/JSONObject;
    invoke-direct/range {p0 .. p2}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->findLocalizedPath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 39
    .local v24, "localized_path":Ljava/lang/String;
    if-eqz v24, :cond_0

    .line 40
    new-instance v20, Ljava/io/File;

    const-string v4, "pass.strings"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v20, "file":Ljava/io/File;
    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->loadFromFile(Ljava/io/File;)V

    .line 44
    .end local v20    # "file":Ljava/io/File;
    :cond_0
    const-string v4, "icon"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->copyBitmapFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v4, "logo"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->copyBitmapFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "strip"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->copyBitmapFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v4, "thumbnail"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->copyBitmapFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v4, "footer"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->copyBitmapFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v20, Ljava/io/File;

    const-string v4, "pass.json"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .restart local v20    # "file":Ljava/io/File;
    nop

    .line 53
    :try_start_0
    invoke-static/range {v20 .. v20}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->readFileAsStringGuessEncoding(Ljava/io/File;)Ljava/lang/String;

    move-result-object v31

    .line 54
    .local v31, "plainJsonString":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lorg/ligi/passandroid/functions/SafeJSONReaderKt;->readJSONSafely(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    .line 57
    .end local v31    # "plainJsonString":Ljava/lang/String;
    :goto_0
    if-nez v30, :cond_2

    .line 64
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/nio/charset/Charset;

    .line 65
    .local v17, "charset":Ljava/nio/charset/Charset;
    nop

    .line 66
    :try_start_1
    const-string v4, "charset"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x2000

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/InputStream;

    new-instance v7, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v7, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v7

    check-cast v0, Ljava/io/Reader;

    move-object v4, v0

    instance-of v7, v4, Ljava/io/BufferedReader;

    if-eqz v7, :cond_3

    check-cast v4, Ljava/io/BufferedReader;

    :goto_1
    check-cast v4, Ljava/io/Reader;

    invoke-static {v4}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v23

    .line 67
    .local v23, "json_str":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lorg/ligi/passandroid/functions/SafeJSONReaderKt;->readJSONSafely(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move-result-object v30

    .line 70
    .end local v23    # "json_str":Ljava/lang/String;
    :goto_2
    if-eqz v30, :cond_1

    .line 78
    .end local v17    # "charset":Ljava/nio/charset/Charset;
    :cond_2
    if-nez v30, :cond_4

    .line 79
    const-string v4, "could not load pass.json from passcode "

    invoke-static {v4}, Lorg/ligi/tracedroid/logging/Log;->w(Ljava/lang/String;)V

    .line 80
    sget-object v4, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v4

    const-string v7, "problem_event"

    const-string v8, "pass"

    const-string v9, "without_pass_json"

    const/4 v10, 0x0

    invoke-interface {v4, v7, v8, v9, v10}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 81
    const/16 v29, 0x0

    .line 206
    .end local v29    # "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    :goto_3
    return-object v29

    .line 55
    .restart local v29    # "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    :catch_0
    move-exception v18

    .line 56
    .local v18, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PassParse Exception "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/ligi/tracedroid/logging/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v17    # "charset":Ljava/nio/charset/Charset;
    :cond_3
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-object v4, v7

    goto :goto_1

    .line 84
    .end local v17    # "charset":Ljava/nio/charset/Charset;
    :cond_4
    nop

    .line 85
    :try_start_3
    invoke-static/range {v30 .. v30}, Lorg/ligi/passandroid/reader/AppleStylePassReaderFunctionsKt;->getBarcodeJson(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v16

    .line 86
    .local v16, "barcode_json":Lorg/json/JSONObject;
    if-eqz v16, :cond_6

    .line 87
    const-string v4, "format"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 89
    .local v15, "barcodeFormatString":Ljava/lang/String;
    sget-object v4, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v4

    const-string v7, "measure_event"

    const-string v8, "barcode_format"

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v7, v8, v15, v9}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    sget-object v4, Lorg/ligi/passandroid/model/pass/BarCode;->Companion:Lorg/ligi/passandroid/model/pass/BarCode$Companion;

    const-string v7, "barcodeFormatString"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Lorg/ligi/passandroid/model/pass/BarCode$Companion;->getFormatFromString(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v14

    .line 91
    .local v14, "barcodeFormat":Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    new-instance v13, Lorg/ligi/passandroid/model/pass/BarCode;

    const-string v4, "message"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v14, v4}, Lorg/ligi/passandroid/model/pass/BarCode;-><init>(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Ljava/lang/String;)V

    .line 92
    .local v13, "barCode":Lorg/ligi/passandroid/model/pass/BarCode;
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lorg/ligi/passandroid/model/pass/PassImpl;->setBarCode(Lorg/ligi/passandroid/model/pass/BarCode;)V

    .line 94
    const-string v4, "altText"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 95
    invoke-virtual/range {v29 .. v29}, Lorg/ligi/passandroid/model/pass/PassImpl;->getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v7, "altText"

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/ligi/passandroid/model/pass/BarCode;->setAlternativeText(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 100
    .end local v13    # "barCode":Lorg/ligi/passandroid/model/pass/BarCode;
    .end local v14    # "barcodeFormat":Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .end local v15    # "barcodeFormatString":Ljava/lang/String;
    .end local v16    # "barcode_json":Lorg/json/JSONObject;
    :cond_6
    :goto_4
    const-string v4, "relevantDate"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 103
    nop

    .line 104
    :try_start_4
    new-instance v4, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    const-string v7, "relevantDate"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lorg/threeten/bp/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;->setCalendarTimespan(Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 111
    :cond_7
    :goto_5
    const-string v4, "expirationDate"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 116
    nop

    .line 117
    :try_start_5
    new-instance v4, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    const/4 v5, 0x0

    const-string v7, "expirationDate"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lorg/threeten/bp/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;->setValidTimespans(Ljava/util/List;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/threeten/bp/DateTimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 124
    :cond_8
    :goto_6
    const-string v4, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->readJsonSafeAsOptional(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;->setSerial(Ljava/lang/String;)V

    .line 129
    const-string v4, "authenticationToken"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->readJsonSafeAsOptional(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;->setAuthToken(Ljava/lang/String;)V

    .line 130
    const-string v4, "webServiceURL"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->readJsonSafeAsOptional(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;->setWebServiceURL(Ljava/lang/String;)V

    .line 131
    const-string v4, "passTypeIdentifier"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->readJsonSafeAsOptional(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;->setPassIdent(Ljava/lang/String;)V

    .line 133
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v26, "locations":Ljava/util/ArrayList;
    nop

    .line 136
    :try_start_6
    const-string v4, "locations"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 137
    .local v27, "locations_json":Lorg/json/JSONArray;
    const/16 v21, 0x0

    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v21

    if-gt v0, v4, :cond_a

    .line 138
    :goto_7
    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    .line 140
    .local v28, "obj":Lorg/json/JSONObject;
    new-instance v25, Lorg/ligi/passandroid/model/pass/PassLocation;

    invoke-direct/range {v25 .. v25}, Lorg/ligi/passandroid/model/pass/PassLocation;-><init>()V

    .line 141
    .local v25, "location":Lorg/ligi/passandroid/model/pass/PassLocation;
    const-string v7, "latitude"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Lorg/ligi/passandroid/model/pass/PassLocation;->setLat(D)V

    .line 142
    const-string v7, "longitude"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Lorg/ligi/passandroid/model/pass/PassLocation;->setLon(D)V

    .line 144
    const-string v7, "relevantText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 145
    const-string v7, "relevantText"

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Lorg/ligi/passandroid/model/AppleStylePassTranslation;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/ligi/passandroid/model/pass/PassLocation;->setName(Ljava/lang/String;)V

    .line 148
    :cond_9
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    .line 137
    move/from16 v0, v21

    if-eq v0, v4, :cond_a

    add-int/lit8 v21, v21, 0x1

    .local v21, "i":I
    goto :goto_7

    .line 105
    .end local v21    # "i":I
    .end local v25    # "location":Lorg/ligi/passandroid/model/pass/PassLocation;
    .end local v26    # "locations":Ljava/util/ArrayList;
    .end local v27    # "locations_json":Lorg/json/JSONArray;
    .end local v28    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v18

    .line 108
    .local v18, "e":Lorg/json/JSONException;
    sget-object v4, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v4

    const-string v7, "problem parsing relevant date"

    check-cast v18, Ljava/lang/Throwable;

    .end local v18    # "e":Lorg/json/JSONException;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v4, v7, v0, v8}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto/16 :goto_5

    .line 109
    :catch_2
    move-exception v18

    .line 110
    .local v18, "e":Lorg/threeten/bp/DateTimeException;
    sget-object v4, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v4

    const-string v7, "problem parsing relevant date"

    check-cast v18, Ljava/lang/Throwable;

    .end local v18    # "e":Lorg/threeten/bp/DateTimeException;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v4, v7, v0, v8}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto/16 :goto_5

    .line 118
    :catch_3
    move-exception v18

    .line 121
    .local v18, "e":Lorg/json/JSONException;
    sget-object v4, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v4

    const-string v7, "problem parsing expiration date"

    check-cast v18, Ljava/lang/Throwable;

    .end local v18    # "e":Lorg/json/JSONException;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v4, v7, v0, v8}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto/16 :goto_6

    .line 122
    :catch_4
    move-exception v18

    .line 123
    .local v18, "e":Lorg/threeten/bp/DateTimeException;
    sget-object v4, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v4

    const-string v7, "problem parsing expiration date"

    check-cast v18, Ljava/lang/Throwable;

    .end local v18    # "e":Lorg/threeten/bp/DateTimeException;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v4, v7, v0, v8}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto/16 :goto_6

    .line 151
    .restart local v26    # "locations":Ljava/util/ArrayList;
    :catch_5
    move-exception v4

    .line 152
    :cond_a
    check-cast v26, Ljava/util/List;

    .end local v26    # "locations":Ljava/util/ArrayList;
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setLocations(Ljava/util/List;)V

    .line 156
    const-string v7, "backgroundColor"

    new-instance v4, Lorg/ligi/passandroid/reader/AppleStylePassReader$read$1;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Lorg/ligi/passandroid/reader/AppleStylePassReader$read$1;-><init>(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    check-cast v4, Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v7, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->readJsonSafe(Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;)V

    .line 162
    const-string v7, "description"

    new-instance v4, Lorg/ligi/passandroid/reader/AppleStylePassReader$read$2;

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v4, v0, v1}, Lorg/ligi/passandroid/reader/AppleStylePassReader$read$2;-><init>(Lorg/ligi/passandroid/model/pass/PassImpl;Lorg/ligi/passandroid/model/AppleStylePassTranslation;)V

    check-cast v4, Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v7, v4}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->readJsonSafe(Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/reader/AppleStylePassReader$JsonStringReadCallback;)V

    .line 171
    sget-object v4, Lorg/ligi/passandroid/model/PassDefinitions;->INSTANCE:Lorg/ligi/passandroid/model/PassDefinitions;

    invoke-virtual {v4}, Lorg/ligi/passandroid/model/PassDefinitions;->getTYPE_TO_NAME()Ljava/util/Map;

    move-result-object v12

    .line 336
    .local v12, "$receiver$iv":Ljava/util/Map;
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .local v19, "element$iv":Ljava/util/Map$Entry;
    move-object/from16 v22, v19

    .line 172
    .local v22, "it":Ljava/util/Map$Entry;
    if-nez v30, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 173
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ligi/passandroid/model/pass/PassType;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;->setType(Lorg/ligi/passandroid/model/pass/PassType;)V

    .line 175
    :cond_c
    nop

    goto :goto_8

    .line 337
    .end local v19    # "element$iv":Ljava/util/Map$Entry;
    .end local v22    # "it":Ljava/util/Map$Entry;
    :cond_d
    nop

    .line 177
    nop

    .line 178
    :try_start_7
    sget-object v4, Lorg/ligi/passandroid/model/PassDefinitions;->INSTANCE:Lorg/ligi/passandroid/model/PassDefinitions;

    invoke-virtual {v4}, Lorg/ligi/passandroid/model/PassDefinitions;->getTYPE_TO_NAME()Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Lorg/ligi/passandroid/model/pass/PassImpl;->getType()Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 179
    .local v33, "type":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 180
    .local v6, "type_json":Lorg/json/JSONObject;
    if-eqz v6, :cond_e

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v5, "fieldList":Ljava/util/ArrayList;
    const-string v7, "primaryFields"

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, v32

    invoke-static/range {v4 .. v11}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->addFields$default(Lorg/ligi/passandroid/reader/AppleStylePassReader;Ljava/util/ArrayList;Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;ZILjava/lang/Object;)V

    .line 184
    const-string v7, "headerFields"

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, v32

    invoke-static/range {v4 .. v11}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->addFields$default(Lorg/ligi/passandroid/reader/AppleStylePassReader;Ljava/util/ArrayList;Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;ZILjava/lang/Object;)V

    .line 185
    const-string v7, "secondaryFields"

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, v32

    invoke-static/range {v4 .. v11}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->addFields$default(Lorg/ligi/passandroid/reader/AppleStylePassReader;Ljava/util/ArrayList;Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;ZILjava/lang/Object;)V

    .line 186
    const-string v7, "auxiliaryFields"

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, v32

    invoke-static/range {v4 .. v11}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->addFields$default(Lorg/ligi/passandroid/reader/AppleStylePassReader;Ljava/util/ArrayList;Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;ZILjava/lang/Object;)V

    .line 187
    const-string v7, "backFields"

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v8, v32

    invoke-direct/range {v4 .. v9}, Lorg/ligi/passandroid/reader/AppleStylePassReader;->addFields(Ljava/util/ArrayList;Lorg/json/JSONObject;Ljava/lang/String;Lorg/ligi/passandroid/model/AppleStylePassTranslation;Z)V

    .line 189
    new-instance v4, Lorg/ligi/passandroid/model/pass/PassField;

    const-string v7, ""

    const v8, 0x7f0700a8

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Lorg/ligi/passandroid/model/pass/PassImpl;->getType()Lorg/ligi/passandroid/model/pass/PassType;

    move-result-object v9

    invoke-static {v9}, Lorg/ligi/passandroid/functions/CategoryHelperKt;->getHumanCategoryString(Lorg/ligi/passandroid/model/pass/PassType;)I

    move-result v9

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v4, v7, v8, v9, v10}, Lorg/ligi/passandroid/model/pass/PassField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    check-cast v5, Ljava/util/List;

    .end local v5    # "fieldList":Ljava/util/ArrayList;
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lorg/ligi/passandroid/model/pass/PassImpl;->setFields(Ljava/util/List;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 194
    .end local v6    # "type_json":Lorg/json/JSONObject;
    .end local v33    # "type":Ljava/lang/String;
    :cond_e
    :goto_9
    nop

    .line 198
    :try_start_8
    const-string v4, "organizationName"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lorg/ligi/passandroid/model/pass/PassImpl;->setCreator(Ljava/lang/String;)V

    .line 199
    sget-object v4, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v4

    const-string v7, "measure_event"

    const-string v8, "organisation_parse"

    invoke-virtual/range {v29 .. v29}, Lorg/ligi/passandroid/model/pass/PassImpl;->getCreator()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v4, v7, v8, v9, v10}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    .line 202
    :goto_a
    new-instance v4, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;

    sget-object v7, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v7}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;-><init>(Lorg/ligi/passandroid/Tracker;)V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/ligi/passandroid/model/ApplePassbookQuirkCorrector;->correctQuirks(Lorg/ligi/passandroid/model/pass/PassImpl;)V

    .line 206
    check-cast v29, Lorg/ligi/passandroid/model/pass/Pass;

    goto/16 :goto_3

    .line 200
    :catch_6
    move-exception v4

    goto :goto_a

    .line 193
    :catch_7
    move-exception v4

    goto :goto_9

    .line 99
    .end local v12    # "$receiver$iv":Ljava/util/Map;
    :catch_8
    move-exception v4

    goto/16 :goto_4

    .line 68
    .restart local v17    # "charset":Ljava/nio/charset/Charset;
    :catch_9
    move-exception v4

    goto/16 :goto_2
.end method
