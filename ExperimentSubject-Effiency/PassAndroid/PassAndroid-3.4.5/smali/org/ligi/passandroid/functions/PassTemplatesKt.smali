.class public final Lorg/ligi/passandroid/functions/PassTemplatesKt;
.super Ljava/lang/Object;
.source "PassTemplates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u001a\u0008\u0010\n\u001a\u00020\u000bH\u0002\u001a\u000e\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t\u001a\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u000e"
    }
    d2 = {
        "APP",
        "",
        "getAPP",
        "()Ljava/lang/String;",
        "createAndAddEmptyPass",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "resources",
        "Landroid/content/res/Resources;",
        "createBasePass",
        "Lorg/ligi/passandroid/model/pass/PassImpl;",
        "createPassForImageImport",
        "createPassForPDFImport",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final APP:Ljava/lang/String; = "passandroid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "passandroid"

    sput-object v0, Lorg/ligi/passandroid/functions/PassTemplatesKt;->APP:Ljava/lang/String;

    return-void
.end method

.method public static final createAndAddEmptyPass(Lorg/ligi/passandroid/model/PassStore;Landroid/content/res/Resources;)Lorg/ligi/passandroid/model/pass/Pass;
    .locals 8
    .param p0, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v2, "passStore"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "resources"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lorg/ligi/passandroid/functions/PassTemplatesKt;->createBasePass()Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v1

    .line 23
    .local v1, "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    const-string v2, "custom Pass"

    invoke-virtual {v1, v2}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    move-object v2, v1

    .line 25
    check-cast v2, Lorg/ligi/passandroid/model/pass/Pass;

    invoke-interface {p0, v2}, Lorg/ligi/passandroid/model/PassStore;->setCurrentPass(Lorg/ligi/passandroid/model/pass/Pass;)V

    move-object v2, v1

    .line 26
    check-cast v2, Lorg/ligi/passandroid/model/pass/Pass;

    invoke-interface {p0, v2}, Lorg/ligi/passandroid/model/PassStore;->save(Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 28
    const v2, 0x7f02007a

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 31
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lorg/ligi/passandroid/model/PassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, "icon.png"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/OutputStream;

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    check-cast v1, Lorg/ligi/passandroid/model/pass/Pass;

    .end local v1    # "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    return-object v1

    .line 32
    .restart local v1    # "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static final createBasePass()Lorg/ligi/passandroid/model/pass/PassImpl;
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lorg/ligi/passandroid/model/pass/PassImpl;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UUID.randomUUID().toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "pass":Lorg/ligi/passandroid/model/pass/PassImpl;
    const-wide v2, 0xff0000ffL

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setAccentColor(I)V

    .line 65
    sget-object v1, Lorg/ligi/passandroid/functions/PassTemplatesKt;->APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setApp(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lorg/ligi/passandroid/model/pass/PassType;->EVENT:Lorg/ligi/passandroid/model/pass/PassType;

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->setType(Lorg/ligi/passandroid/model/pass/PassType;)V

    .line 67
    return-object v0
.end method

.method public static final createPassForImageImport(Landroid/content/res/Resources;)Lorg/ligi/passandroid/model/pass/Pass;
    .locals 10
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lorg/ligi/passandroid/functions/PassTemplatesKt;->createBasePass()Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v7

    .line 40
    .local v7, "$receiver":Lorg/ligi/passandroid/model/pass/PassImpl;
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x3

    new-array v8, v0, [Lorg/ligi/passandroid/model/pass/PassField;

    .line 43
    sget-object v0, Lorg/ligi/passandroid/model/pass/PassField;->Companion:Lorg/ligi/passandroid/model/pass/PassField$Companion;

    const v1, 0x7f07004b

    const v2, 0x7f07004c

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/ligi/passandroid/model/pass/PassField$Companion;->create$default(Lorg/ligi/passandroid/model/pass/PassField$Companion;IILandroid/content/res/Resources;ZILjava/lang/Object;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    aput-object v0, v8, v4

    .line 44
    sget-object v0, Lorg/ligi/passandroid/model/pass/PassField;->Companion:Lorg/ligi/passandroid/model/pass/PassField$Companion;

    const v1, 0x7f070046

    const v2, 0x7f070047

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/ligi/passandroid/model/pass/PassField$Companion;->create$default(Lorg/ligi/passandroid/model/pass/PassField$Companion;IILandroid/content/res/Resources;ZILjava/lang/Object;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    aput-object v0, v8, v9

    .line 45
    const/4 v0, 0x2

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassField;->Companion:Lorg/ligi/passandroid/model/pass/PassField$Companion;

    const v2, 0x7f070048

    const v3, 0x7f070049

    invoke-virtual {v1, v2, v3, p0, v9}, Lorg/ligi/passandroid/model/pass/PassField$Companion;->create(IILandroid/content/res/Resources;Z)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    aput-object v1, v8, v0

    .line 42
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/ligi/passandroid/model/pass/PassImpl;->setFields(Ljava/util/List;)V

    .line 47
    nop

    .line 39
    check-cast v7, Lorg/ligi/passandroid/model/pass/Pass;

    .end local v7    # "$receiver":Lorg/ligi/passandroid/model/pass/PassImpl;
    return-object v7
.end method

.method public static final createPassForPDFImport(Landroid/content/res/Resources;)Lorg/ligi/passandroid/model/pass/Pass;
    .locals 10
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lorg/ligi/passandroid/functions/PassTemplatesKt;->createBasePass()Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v7

    .line 52
    .local v7, "$receiver":Lorg/ligi/passandroid/model/pass/PassImpl;
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/ligi/passandroid/model/pass/PassImpl;->setDescription(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x3

    new-array v8, v0, [Lorg/ligi/passandroid/model/pass/PassField;

    .line 55
    sget-object v0, Lorg/ligi/passandroid/model/pass/PassField;->Companion:Lorg/ligi/passandroid/model/pass/PassField$Companion;

    const v1, 0x7f07004b

    const v2, 0x7f07004d

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/ligi/passandroid/model/pass/PassField$Companion;->create$default(Lorg/ligi/passandroid/model/pass/PassField$Companion;IILandroid/content/res/Resources;ZILjava/lang/Object;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    aput-object v0, v8, v4

    .line 56
    sget-object v0, Lorg/ligi/passandroid/model/pass/PassField;->Companion:Lorg/ligi/passandroid/model/pass/PassField$Companion;

    const v1, 0x7f070046

    const v2, 0x7f070047

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lorg/ligi/passandroid/model/pass/PassField$Companion;->create$default(Lorg/ligi/passandroid/model/pass/PassField$Companion;IILandroid/content/res/Resources;ZILjava/lang/Object;)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v0

    aput-object v0, v8, v9

    .line 57
    const/4 v0, 0x2

    sget-object v1, Lorg/ligi/passandroid/model/pass/PassField;->Companion:Lorg/ligi/passandroid/model/pass/PassField$Companion;

    const v2, 0x7f070048

    const v3, 0x7f07004a

    invoke-virtual {v1, v2, v3, p0, v9}, Lorg/ligi/passandroid/model/pass/PassField$Companion;->create(IILandroid/content/res/Resources;Z)Lorg/ligi/passandroid/model/pass/PassField;

    move-result-object v1

    aput-object v1, v8, v0

    .line 54
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/ligi/passandroid/model/pass/PassImpl;->setFields(Ljava/util/List;)V

    .line 59
    nop

    .line 51
    check-cast v7, Lorg/ligi/passandroid/model/pass/Pass;

    .end local v7    # "$receiver":Lorg/ligi/passandroid/model/pass/PassImpl;
    return-object v7
.end method

.method public static final getAPP()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lorg/ligi/passandroid/functions/PassTemplatesKt;->APP:Ljava/lang/String;

    return-object v0
.end method
