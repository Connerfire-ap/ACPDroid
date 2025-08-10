.class public final Lorg/ligi/passandroid/ui/edit/ImageEditHelper;
.super Ljava/lang/Object;
.source "ImageEditHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J \u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/edit/ImageEditHelper;",
        "",
        "context",
        "Landroid/app/Activity;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "(Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;)V",
        "extractImage",
        "",
        "imageReturnedIntent",
        "Landroid/content/Intent;",
        "name",
        "",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "startPick",
        "reqCodePickLogo",
        "Companion",
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
.field public static final Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

# The value of this static final field might be set in the static constructor
.field private static final REQ_CODE_OFFSET:I = 0x15b3

# The value of this static final field might be set in the static constructor
.field private static final REQ_CODE_PICK_FOOTER:I = 0x15b8

# The value of this static final field might be set in the static constructor
.field private static final REQ_CODE_PICK_ICON:I = 0x15b5

# The value of this static final field might be set in the static constructor
.field private static final REQ_CODE_PICK_LOGO:I = 0x15b4

# The value of this static final field might be set in the static constructor
.field private static final REQ_CODE_PICK_STRIP:I = 0x15b6

# The value of this static final field might be set in the static constructor
.field private static final REQ_CODE_PICK_THUMBNAIL:I = 0x15b7


# instance fields
.field private final context:Landroid/app/Activity;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    .line 49
    const/16 v0, 0x15b3

    sput v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_OFFSET:I

    .line 50
    sget-object v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    # invokes: Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_OFFSET()I
    invoke-static {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->access$getREQ_CODE_OFFSET$p(Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_LOGO:I

    .line 51
    sget-object v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    # invokes: Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_OFFSET()I
    invoke-static {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->access$getREQ_CODE_OFFSET$p(Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_ICON:I

    .line 52
    sget-object v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    # invokes: Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_OFFSET()I
    invoke-static {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->access$getREQ_CODE_OFFSET$p(Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    sput v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_STRIP:I

    .line 53
    sget-object v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    # invokes: Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_OFFSET()I
    invoke-static {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->access$getREQ_CODE_OFFSET$p(Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    sput v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_THUMBNAIL:I

    .line 54
    sget-object v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    # invokes: Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getREQ_CODE_OFFSET()I
    invoke-static {v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->access$getREQ_CODE_OFFSET$p(Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    sput v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_FOOTER:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->context:Landroid/app/Activity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-void
.end method

.method public static final synthetic access$getREQ_CODE_OFFSET$cp()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_OFFSET:I

    return v0
.end method

.method public static final synthetic access$getREQ_CODE_PICK_FOOTER$cp()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_FOOTER:I

    return v0
.end method

.method public static final synthetic access$getREQ_CODE_PICK_ICON$cp()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_ICON:I

    return v0
.end method

.method public static final synthetic access$getREQ_CODE_PICK_LOGO$cp()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_LOGO:I

    return v0
.end method

.method public static final synthetic access$getREQ_CODE_PICK_STRIP$cp()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_STRIP:I

    return v0
.end method

.method public static final synthetic access$getREQ_CODE_PICK_THUMBNAIL$cp()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->REQ_CODE_PICK_THUMBNAIL:I

    return v0
.end method

.method private final extractImage(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .param p1, "imageReturnedIntent"    # Landroid/content/Intent;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v2, "imageReturnedIntent.data"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->context:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    invoke-static {v3, v2}, Lorg/ligi/kaxt/UriExtensionsKt;->loadImage(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 35
    .local v0, "extractedFile":Ljava/io/File;
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getCurrentPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v7

    .line 36
    .local v7, "pass":Lorg/ligi/passandroid/model/pass/Pass;
    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    nop

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v7}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/ligi/passandroid/model/PassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/ligi/passandroid/model/pass/PassImpl;->Companion:Lorg/ligi/passandroid/model/pass/PassImpl$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/model/pass/PassImpl$Companion;->getFILETYPE_IMAGES()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    .local v1, "destinationFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 40
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v1    # "destinationFile":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v6

    .line 42
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "imageReturnedIntent"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-eqz p3, :cond_0

    .line 26
    sget-object v1, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->Companion:Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;

    invoke-virtual {v1, p1}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper$Companion;->getImageStringByRequestCode(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "imageStringByRequestCode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0, p3, v0}, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->extractImage(Landroid/content/Intent;Ljava/lang/String;)V

    .line 31
    .end local v0    # "imageStringByRequestCode":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final startPick(I)V
    .locals 3
    .param p1, "reqCodePickLogo"    # I

    .prologue
    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 18
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/ImageEditHelper;->context:Landroid/app/Activity;

    const-string v1, "Select Picture"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 21
    return-void
.end method
