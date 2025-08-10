.class public final Lorg/ligi/passandroid/ui/UnzipPassController;
.super Ljava/lang/Object;
.source "UnzipPassController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;,
        Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;,
        Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\t\n\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/UnzipPassController;",
        "",
        "()V",
        "processFile",
        "",
        "spec",
        "Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;",
        "processInputStream",
        "Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;",
        "FailCallback",
        "InputStreamUnzipControllerSpec",
        "SuccessCallback",
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
.field public static final INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/ligi/passandroid/ui/UnzipPassController;

    invoke-direct {v0}, Lorg/ligi/passandroid/ui/UnzipPassController;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/ui/UnzipPassController;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final processFile(Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;)V
    .locals 29
    .param p1, "spec"    # Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;

    .prologue
    .line 49
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v26

    .line 50
    .local v26, "uuid":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .local v18, "path":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 54
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getFailCallback()Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating the temp dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;->fail(Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v2, "source.obj"

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v5, 0x2000

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/OutputStream;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object v2, v3

    check-cast v2, Ljava/io/Writer;

    instance-of v3, v2, Ljava/io/BufferedWriter;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/io/BufferedWriter;

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 61
    nop

    .line 62
    :try_start_0
    new-instance v28, Lnet/lingala/zip4j/core/ZipFile;

    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getZipFileString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 63
    .local v28, "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v28    # "zipFile":Lnet/lingala/zip4j/core/ZipFile;
    :goto_2
    new-instance v14, Ljava/io/File;

    const-string v2, "manifest.json"

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .local v14, "manifestFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v2, "main.json"

    move-object/from16 v0, v18

    invoke-direct {v11, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v11, "espassFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    nop

    .line 75
    :try_start_1
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v5, 0x2000

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/InputStream;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v3

    check-cast v0, Ljava/io/Reader;

    move-object v2, v0

    instance-of v3, v2, Ljava/io/BufferedReader;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/io/BufferedReader;

    :goto_3
    check-cast v2, Ljava/io/Reader;

    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v22

    .line 76
    .local v22, "readToString":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lorg/ligi/passandroid/functions/SafeJSONReaderKt;->readJSONSafely(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-nez v15, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 77
    .local v15, "manifest_json":Lorg/json/JSONObject;
    :cond_2
    const-string v2, "pass.json"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v26

    .line 146
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getTargetPath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 149
    new-instance v24, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getTargetPath()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v24, "rename_file":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getOverwrite()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-static/range {v24 .. v24}, Lkotlin/io/FilesKt;->deleteRecursively(Ljava/io/File;)Z

    .line 155
    :cond_3
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 156
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 159
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getOnSuccessCallback()Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "uuid"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-interface {v2, v0}, Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;->call(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 59
    .end local v11    # "espassFile":Ljava/io/File;
    .end local v14    # "manifestFile":Ljava/io/File;
    .end local v15    # "manifest_json":Lorg/json/JSONObject;
    .end local v22    # "readToString":Ljava/lang/String;
    .end local v24    # "rename_file":Ljava/io/File;
    :cond_4
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v2, v3

    goto/16 :goto_1

    .line 64
    :catch_0
    move-exception v10

    .line 65
    .local v10, "e":Lnet/lingala/zip4j/exception/ZipException;
    invoke-virtual {v10}, Lnet/lingala/zip4j/exception/ZipException;->printStackTrace()V

    goto/16 :goto_2

    .line 75
    .end local v10    # "e":Lnet/lingala/zip4j/exception/ZipException;
    .restart local v11    # "espassFile":Ljava/io/File;
    .restart local v14    # "manifestFile":Ljava/io/File;
    :cond_5
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    goto :goto_3

    .line 78
    :catch_1
    move-exception v10

    .line 79
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getFailCallback()Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem with manifest.json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 84
    nop

    .line 85
    :try_start_3
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v5, 0x2000

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/InputStream;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v3

    check-cast v0, Ljava/io/Reader;

    move-object v2, v0

    instance-of v3, v2, Ljava/io/BufferedReader;

    if-eqz v3, :cond_8

    check-cast v2, Ljava/io/BufferedReader;

    :goto_6
    check-cast v2, Ljava/io/Reader;

    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v22

    .line 86
    .restart local v22    # "readToString":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lorg/ligi/passandroid/functions/SafeJSONReaderKt;->readJSONSafely(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    if-nez v15, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 87
    .restart local v15    # "manifest_json":Lorg/json/JSONObject;
    :cond_7
    const-string v2, "id"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_4

    .line 85
    .end local v15    # "manifest_json":Lorg/json/JSONObject;
    .end local v22    # "readToString":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    goto :goto_6

    .line 88
    :catch_2
    move-exception v10

    .line 89
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getFailCallback()Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem with manifest.json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getZipFileString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 98
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 99
    .local v25, "resources":Landroid/content/res/Resources;
    if-eqz v8, :cond_a

    .line 100
    const-string v2, "resources"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v25 .. v25}, Lorg/ligi/passandroid/functions/PassTemplatesKt;->createPassForImageImport(Landroid/content/res/Resources;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v13

    .line 101
    .local v13, "imagePass":Lorg/ligi/passandroid/model/pass/Pass;
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v13}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/model/PassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 102
    .local v19, "pathForID":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 104
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getZipFileString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "strip.png"

    move-object/from16 v0, v19

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 106
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2, v13}, Lorg/ligi/passandroid/model/PassStore;->save(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 107
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v2

    const-string v3, "new"

    invoke-virtual {v2, v13, v3}, Lorg/ligi/passandroid/model/PassClassifier;->moveToTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getOnSuccessCallback()Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;->call(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v13    # "imagePass":Lorg/ligi/passandroid/model/pass/Pass;
    .end local v19    # "pathForID":Ljava/io/File;
    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_b

    .line 113
    nop

    .line 114
    :try_start_4
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getZipFileString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v12, "file":Ljava/io/File;
    invoke-static {v12}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    invoke-static {v2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v2

    const-wide/16 v4, 0x4

    invoke-interface {v2, v4, v5}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v23

    .line 116
    .local v23, "readUtf8":Ljava/lang/String;
    const-string v2, "%PDF"

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 117
    const/high16 v2, 0x10000000

    invoke-static {v12, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v16

    .line 118
    .local v16, "open":Landroid/os/ParcelFileDescriptor;
    new-instance v20, Landroid/graphics/pdf/PdfRenderer;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/graphics/pdf/PdfRenderer;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 120
    .local v20, "pdfRenderer":Landroid/graphics/pdf/PdfRenderer;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/pdf/PdfRenderer;->openPage(I)Landroid/graphics/pdf/PdfRenderer$Page;

    move-result-object v17

    .line 121
    .local v17, "page":Landroid/graphics/pdf/PdfRenderer$Page;
    const-string v2, "page"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/pdf/PdfRenderer$Page;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/pdf/PdfRenderer$Page;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v21, v2, v3

    .line 123
    .local v21, "ratio":F
    const-string v2, "resources"

    move-object/from16 v0, v25

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    .line 124
    .local v27, "widthPixels":I
    move/from16 v0, v27

    int-to-float v2, v0

    mul-float v2, v2, v21

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v27

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 125
    .local v9, "createBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v2, v3, v4}, Landroid/graphics/pdf/PdfRenderer$Page;->render(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;I)V

    .line 127
    invoke-static/range {v25 .. v25}, Lorg/ligi/passandroid/functions/PassTemplatesKt;->createPassForPDFImport(Landroid/content/res/Resources;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v13

    .line 128
    .restart local v13    # "imagePass":Lorg/ligi/passandroid/model/pass/Pass;
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v13}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/model/PassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 129
    .restart local v19    # "pathForID":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdirs()Z

    .line 131
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "strip.png"

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/OutputStream;

    invoke-virtual {v9, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 133
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2, v13}, Lorg/ligi/passandroid/model/PassStore;->save(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 134
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v2

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v2

    const-string v3, "new"

    invoke-virtual {v2, v13, v3}, Lorg/ligi/passandroid/model/PassClassifier;->moveToTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getOnSuccessCallback()Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;->call(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 138
    .end local v9    # "createBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "imagePass":Lorg/ligi/passandroid/model/pass/Pass;
    .end local v16    # "open":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "page":Landroid/graphics/pdf/PdfRenderer$Page;
    .end local v19    # "pathForID":Ljava/io/File;
    .end local v20    # "pdfRenderer":Landroid/graphics/pdf/PdfRenderer;
    .end local v21    # "ratio":F
    .end local v23    # "readUtf8":Ljava/lang/String;
    .end local v27    # "widthPixels":I
    :catch_3
    move-exception v10

    .line 139
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;->getFailCallback()Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Pass is not espass or pkpass format :-("

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;->fail(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v25    # "resources":Landroid/content/res/Resources;
    .restart local v15    # "manifest_json":Lorg/json/JSONObject;
    .restart local v22    # "readToString":Ljava/lang/String;
    .restart local v24    # "rename_file":Ljava/io/File;
    :cond_c
    const-string v2, "Pass with same ID exists"

    invoke-static {v2}, Lorg/ligi/tracedroid/logging/Log;->i(Ljava/lang/String;)V

    goto/16 :goto_5
.end method


# virtual methods
.method public final processInputStream(Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;)V
    .locals 8
    .param p1, "spec"    # Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const-string v2, "spec"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    nop

    .line 36
    :try_start_0
    const-string v2, "ins"

    const-string v3, "pass"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 37
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {p1}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getInputStreamWithSource$PassAndroid_3_4_5_noMapsNoAnalyticsForFDroidDebug()Lorg/ligi/passandroid/model/InputStreamWithSource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/InputStreamWithSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/OutputStream;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v2, v4, v5, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 38
    new-instance v2, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;

    const-string v3, "tempFile"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tempFile.absolutePath"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, p1}, Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;-><init>(Ljava/lang/String;Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;)V

    invoke-direct {p0, v2}, Lorg/ligi/passandroid/ui/UnzipPassController;->processFile(Lorg/ligi/passandroid/ui/FileUnzipControllerSpec;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v2}, Lorg/ligi/passandroid/App$Companion;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v3

    const-string v4, "problem processing InputStream"

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v3, v4, v2, v7}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 42
    invoke-virtual {p1}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;->getFailCallback()Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "problem with temp file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
