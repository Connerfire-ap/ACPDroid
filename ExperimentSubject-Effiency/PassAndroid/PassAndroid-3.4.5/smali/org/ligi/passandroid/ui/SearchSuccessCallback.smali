.class public final Lorg/ligi/passandroid/ui/SearchSuccessCallback;
.super Ljava/lang/Object;
.source "SearchSuccessCallback.kt"

# interfaces
.implements Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/SearchSuccessCallback;",
        "Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;",
        "context",
        "Landroid/content/Context;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "foundList",
        "",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "findNotificationBuilder",
        "Landroid/support/v4/app/NotificationCompat$Builder;",
        "file",
        "Ljava/io/File;",
        "notifyManager",
        "Landroid/app/NotificationManager;",
        "(Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Ljava/util/List;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/io/File;Landroid/app/NotificationManager;)V",
        "call",
        "",
        "uuid",
        "",
        "getDateOfPassForComparison",
        "Lorg/threeten/bp/ZonedDateTime;",
        "pass",
        "getInitialTopic",
        "scale2maxSize",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "dimensionPixelSize",
        "",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final file:Ljava/io/File;

.field private final findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final foundList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation
.end field

.field private final notifyManager:Landroid/app/NotificationManager;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Ljava/util/List;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/io/File;Landroid/app/NotificationManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "foundList"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "findNotificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5, "file"    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6, "notifyManager"    # Landroid/app/NotificationManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/ligi/passandroid/model/PassStore;",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;",
            "Landroid/support/v4/app/NotificationCompat$Builder;",
            "Ljava/io/File;",
            "Landroid/app/NotificationManager;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foundList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "findNotificationBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->passStore:Lorg/ligi/passandroid/model/PassStore;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->foundList:Ljava/util/List;

    iput-object p4, p0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iput-object p5, p0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->file:Ljava/io/File;

    iput-object p6, p0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->notifyManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private final getDateOfPassForComparison(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/threeten/bp/ZonedDateTime;
    .locals 2
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 64
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getFrom()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    .line 65
    :cond_2
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getTo()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 66
    invoke-interface {p1}, Lorg/ligi/passandroid/model/pass/Pass;->getValidTimespans()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    invoke-virtual {v0}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->getTo()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v1

    .line 65
    goto :goto_1

    .line 67
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getInitialTopic(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;
    .locals 3
    .param p1, "pass"    # Lorg/ligi/passandroid/model/pass/Pass;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->getDateOfPassForComparison(Lorg/ligi/passandroid/model/pass/Pass;)Lorg/threeten/bp/ZonedDateTime;

    move-result-object v0

    .line 56
    .local v0, "passDate":Lorg/threeten/bp/ZonedDateTime;
    if-eqz v0, :cond_0

    invoke-static {}, Lorg/threeten/bp/ZonedDateTime;->now()Lorg/threeten/bp/ZonedDateTime;

    move-result-object v1

    check-cast v1, Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/ZonedDateTime;->isBefore(Lorg/threeten/bp/chrono/ChronoZonedDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->context:Landroid/content/Context;

    const v2, 0x7f0700a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.topic_archive)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->context:Landroid/content/Context;

    const v2, 0x7f0700a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.topic_new)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final scale2maxSize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dimensionPixelSize"    # I

    .prologue
    .line 50
    int-to-float v2, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v0, v2, v1

    .line 51
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "Bitmap.createScaledBitma\u2026 * scale).toInt(), false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 50
    .end local v0    # "scale":F
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 16
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v11, "uuid"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->passStore:Lorg/ligi/passandroid/model/PassStore;

    move-object/from16 v0, p1

    invoke-interface {v11, v0}, Lorg/ligi/passandroid/model/PassStore;->getPassbookForId(Ljava/lang/String;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v10

    .line 22
    .local v10, "pass":Lorg/ligi/passandroid/model/pass/Pass;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->foundList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 72
    .local v1, "$receiver$iv":Ljava/lang/Iterable;
    instance-of v11, v1, Ljava/util/Collection;

    if-eqz v11, :cond_2

    move-object v11, v1

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v8, 0x0

    .line 23
    .local v8, "isDuplicate":Z
    :goto_0
    if-eqz v10, :cond_1

    if-nez v8, :cond_1

    .line 24
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->foundList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->passStore:Lorg/ligi/passandroid/model/PassStore;

    const-string v12, "icon"

    invoke-interface {v10, v11, v12}, Lorg/ligi/passandroid/model/pass/Pass;->getBitmap(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 26
    .local v6, "iconBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v11}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->getInitialTopic(Lorg/ligi/passandroid/model/pass/Pass;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Lorg/ligi/passandroid/model/PassClassifier;->moveToTopic(Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;)V

    .line 27
    if-eqz v6, :cond_0

    .line 28
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09008f

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->scale2maxSize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 29
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v11, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 32
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->context:Landroid/content/Context;

    const v12, 0x7f07004f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-interface {v10}, Lorg/ligi/passandroid/model/pass/Pass;->getDescription()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "foundString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    check-cast v5, Ljava/lang/CharSequence;

    .end local v5    # "foundString":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 35
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->foundList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    .line 36
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->context:Landroid/content/Context;

    const v12, 0x7f07004e

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->foundList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "foundMoreString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    check-cast v4, Ljava/lang/CharSequence;

    .end local v4    # "foundMoreString":Ljava/lang/String;
    invoke-virtual {v11, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 40
    :goto_1
    new-instance v7, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->context:Landroid/content/Context;

    const-class v12, Lorg/ligi/passandroid/ui/PassViewActivity;

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v7, "intent":Landroid/content/Intent;
    sget-object v11, Lorg/ligi/passandroid/ui/PassViewActivityBase;->Companion:Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;

    invoke-virtual {v11}, Lorg/ligi/passandroid/ui/PassViewActivityBase$Companion;->getEXTRA_KEY_UUID()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v7, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->context:Landroid/content/Context;

    sget-object v13, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->Companion:Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;

    invoke-virtual {v13}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;->getREQUEST_CODE()I

    move-result v13

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v7, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 45
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->notifyManager:Landroid/app/NotificationManager;

    sget-object v12, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->Companion:Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;

    invoke-virtual {v12}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;->getFOUND_NOTIFICATION_ID()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v13}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 47
    .end local v6    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 73
    .end local v8    # "isDuplicate":Z
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v9, v3

    check-cast v9, Lorg/ligi/passandroid/model/pass/Pass;

    .line 22
    .local v9, "it":Lorg/ligi/passandroid/model/pass/Pass;
    invoke-interface {v9}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_0

    .line 74
    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v9    # "it":Lorg/ligi/passandroid/model/pass/Pass;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 39
    .restart local v6    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "isDuplicate":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchSuccessCallback;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method
