.class public final Lorg/ligi/passandroid/reader/PassReader;
.super Ljava/lang/Object;
.source "PassReader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/ligi/passandroid/reader/PassReader;",
        "",
        "()V",
        "read",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "path",
        "Ljava/io/File;",
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
.field public static final INSTANCE:Lorg/ligi/passandroid/reader/PassReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lorg/ligi/passandroid/reader/PassReader;

    invoke-direct {v0}, Lorg/ligi/passandroid/reader/PassReader;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/reader/PassReader;->INSTANCE:Lorg/ligi/passandroid/reader/PassReader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Ljava/io/File;)Lorg/ligi/passandroid/model/pass/Pass;
    .locals 20
    .param p1, "path"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "path"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v15, Lorg/ligi/passandroid/model/pass/PassImpl;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;-><init>(Ljava/lang/String;)V

    .line 20
    .local v15, "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    new-instance v13, Ljava/io/File;

    const-string v1, "data.json"

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .local v13, "file":Ljava/io/File;
    nop

    .line 23
    :try_start_0
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v4, 0x2000

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/InputStream;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v0, v2

    check-cast v0, Ljava/io/Reader;

    move-object v1, v0

    instance-of v2, v1, Ljava/io/BufferedReader;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/io/BufferedReader;

    :goto_0
    check-cast v1, Ljava/io/Reader;

    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v17

    .line 24
    .local v17, "plainJsonString":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lorg/ligi/passandroid/functions/SafeJSONReaderKt;->readJSONSafely(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    if-nez v16, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 26
    .local v16, "pass_json":Lorg/json/JSONObject;
    :cond_0
    const-string v1, "what"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    const-string v1, "what"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 28
    .local v19, "what_json":Lorg/json/JSONObject;
    const-string v1, "description"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    .line 31
    .end local v19    # "what_json":Lorg/json/JSONObject;
    :cond_1
    const-string v1, "meta"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v1, "meta"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 33
    .local v14, "meta_json":Lorg/json/JSONObject;
    sget-object v1, Lorg/ligi/passandroid/model/PassDefinitions;->INSTANCE:Lorg/ligi/passandroid/model/PassDefinitions;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/PassDefinitions;->getNAME_TO_TYPE()Ljava/util/Map;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/pass/PassType;

    if-eqz v1, :cond_7

    :goto_1
    invoke-virtual {v15, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setType(Lorg/ligi/passandroid/model/pass/PassType;)V

    .line 34
    const-string v1, "organisation"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setCreator(Ljava/lang/String;)V

    .line 35
    const-string v1, "app"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setApp(Ljava/lang/String;)V

    .line 38
    .end local v14    # "meta_json":Lorg/json/JSONObject;
    :cond_2
    const-string v1, "ui"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    const-string v1, "ui"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 40
    .local v18, "ui_json":Lorg/json/JSONObject;
    const-string v1, "bgColor"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v15, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setAccentColor(I)V

    .line 43
    .end local v18    # "ui_json":Lorg/json/JSONObject;
    :cond_3
    const-string v1, "barcode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    const-string v1, "barcode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 45
    .local v10, "barcode_json":Lorg/json/JSONObject;
    const-string v1, "type"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "barcodeFormatString":Ljava/lang/String;
    sget-object v1, Lorg/ligi/passandroid/model/pass/BarCode;->Companion:Lorg/ligi/passandroid/model/pass/BarCode$Companion;

    const-string v2, "barcodeFormatString"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lorg/ligi/passandroid/model/pass/BarCode$Companion;->getFormatFromString(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;

    move-result-object v8

    .line 48
    .local v8, "barcodeFormat":Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    new-instance v7, Lorg/ligi/passandroid/model/pass/BarCode;

    const-string v1, "message"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v8, v1}, Lorg/ligi/passandroid/model/pass/BarCode;-><init>(Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;Ljava/lang/String;)V

    .line 49
    .local v7, "barCode":Lorg/ligi/passandroid/model/pass/BarCode;
    invoke-virtual {v15, v7}, Lorg/ligi/passandroid/model/pass/PassImpl;->setBarCode(Lorg/ligi/passandroid/model/pass/BarCode;)V

    .line 51
    const-string v1, "altText"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    const-string v1, "altText"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/ligi/passandroid/model/pass/BarCode;->setAlternativeText(Ljava/lang/String;)V

    .line 56
    .end local v7    # "barCode":Lorg/ligi/passandroid/model/pass/BarCode;
    .end local v8    # "barcodeFormat":Lorg/ligi/passandroid/model/pass/PassBarCodeFormat;
    .end local v9    # "barcodeFormatString":Ljava/lang/String;
    .end local v10    # "barcode_json":Lorg/json/JSONObject;
    :cond_4
    const-string v1, "when"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    const-string v1, "when"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "dateTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 59
    .local v11, "dateTime":Ljava/lang/String;
    new-instance v1, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v15, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setCalendarTimespan(Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    .line 60
    new-instance v1, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    check-cast v11, Ljava/lang/CharSequence;

    .end local v11    # "dateTime":Ljava/lang/String;
    invoke-static {v11}, Lorg/threeten/bp/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v15, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setCalendarTimespan(Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v16    # "pass_json":Lorg/json/JSONObject;
    .end local v17    # "plainJsonString":Ljava/lang/String;
    :cond_5
    :goto_2
    check-cast v15, Lorg/ligi/passandroid/model/pass/Pass;

    .end local v15    # "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    return-object v15

    .line 23
    .restart local v15    # "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    :cond_6
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v2

    goto/16 :goto_0

    .line 33
    .restart local v14    # "meta_json":Lorg/json/JSONObject;
    .restart local v16    # "pass_json":Lorg/json/JSONObject;
    .restart local v17    # "plainJsonString":Ljava/lang/String;
    :cond_7
    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->GENERIC:Lorg/ligi/passandroid/model/pass/PassType;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 63
    .end local v14    # "meta_json":Lorg/json/JSONObject;
    .end local v16    # "pass_json":Lorg/json/JSONObject;
    .end local v17    # "plainJsonString":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 64
    .local v12, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PassParse Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/ligi/tracedroid/logging/Log;->i(Ljava/lang/String;)V

    goto :goto_2
.end method
