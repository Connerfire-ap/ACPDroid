.class public final Lorg/ligi/passandroid/ui/SearchPassesIntentService;
.super Landroid/app/IntentService;
.source "SearchPassesIntentService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 $2\u00020\u0001:\u0001$B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0018\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u0016H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006%"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/SearchPassesIntentService;",
        "Landroid/app/IntentService;",
        "()V",
        "bus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "findNotificationBuilder",
        "Landroid/support/v4/app/NotificationCompat$Builder;",
        "foundList",
        "",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "lastProgressUpdate",
        "",
        "notifyManager",
        "Landroid/app/NotificationManager;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "getPassStore",
        "()Lorg/ligi/passandroid/model/PassStore;",
        "progressNotificationBuilder",
        "shouldFinish",
        "",
        "tracker",
        "Lorg/ligi/passandroid/Tracker;",
        "getTracker",
        "()Lorg/ligi/passandroid/Tracker;",
        "onDestroy",
        "",
        "onHandleIntent",
        "intent",
        "Landroid/content/Intent;",
        "search_in",
        "path",
        "Ljava/io/File;",
        "recursive",
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
.field public static final Companion:Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;

# The value of this static final field might be set in the static constructor
.field private static final FOUND_NOTIFICATION_ID:I = 0x2

# The value of this static final field might be set in the static constructor
.field private static final PROGRESS_NOTIFICATION_ID:I = 0x1

# The value of this static final field might be set in the static constructor
.field private static final REQUEST_CODE:I = 0x1


# instance fields
.field private final bus:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private foundList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation
.end field

.field private lastProgressUpdate:J

.field private notifyManager:Landroid/app/NotificationManager;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progressNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private shouldFinish:Z

.field private final tracker:Lorg/ligi/passandroid/Tracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    new-instance v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->Companion:Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;

    .line 153
    sput v2, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->PROGRESS_NOTIFICATION_ID:I

    .line 154
    const/4 v0, 0x2

    sput v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->FOUND_NOTIFICATION_ID:I

    .line 156
    sput v2, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    const-string v1, "SearchPassesIntentService"

    invoke-direct {p0, v1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "tag$iv":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 162
    new-instance v1, Lorg/ligi/passandroid/ui/SearchPassesIntentService$$special$$inlined$instance$1;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$$special$$inlined$instance$1;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 161
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/PassStore;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 40
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 163
    const/4 v0, 0x0

    .line 164
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 165
    new-instance v1, Lorg/ligi/passandroid/ui/SearchPassesIntentService$$special$$inlined$instance$2;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$$special$$inlined$instance$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 164
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/EventBus;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->bus:Lorg/greenrobot/eventbus/EventBus;

    .line 41
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 168
    new-instance v1, Lorg/ligi/passandroid/ui/SearchPassesIntentService$$special$$inlined$instance$3;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$$special$$inlined$instance$3;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 167
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/Tracker;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->tracker:Lorg/ligi/passandroid/Tracker;

    return-void
.end method

.method public static final synthetic access$getFOUND_NOTIFICATION_ID$cp()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->FOUND_NOTIFICATION_ID:I

    return v0
.end method

.method public static final synthetic access$getPROGRESS_NOTIFICATION_ID$cp()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->PROGRESS_NOTIFICATION_ID:I

    return v0
.end method

.method public static final synthetic access$getREQUEST_CODE$cp()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->REQUEST_CODE:I

    return v0
.end method

.method private final search_in(Ljava/io/File;Z)V
    .locals 18
    .param p1, "path"    # Ljava/io/File;
    .param p2, "recursive"    # Z

    .prologue
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->lastProgressUpdate:J

    sub-long/2addr v4, v10

    const/16 v3, 0x3e8

    int-to-long v10, v3

    cmp-long v3, v4, v10

    if-lez v3, :cond_3

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->lastProgressUpdate:J

    .line 97
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v16

    .line 98
    .local v16, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->bus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v4, Lorg/ligi/passandroid/events/ScanProgressEvent;

    const-string v5, "msg"

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lorg/ligi/passandroid/events/ScanProgressEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->progressNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    check-cast v16, Ljava/lang/CharSequence;

    .end local v16    # "msg":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->notifyManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget-object v4, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->Companion:Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;->getPROGRESS_NOTIFICATION_ID()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->progressNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 103
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 105
    .local v15, "files":[Ljava/io/File;
    if-eqz v15, :cond_4

    move-object v3, v15

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_6

    .line 144
    :cond_4
    return-void

    .line 105
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 111
    :cond_6
    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_1
    array-length v3, v15

    move/from16 v0, v17

    if-ge v0, v3, :cond_4

    aget-object v7, v15, v17

    .line 112
    .local v7, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->shouldFinish:Z

    if-nez v3, :cond_4

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/ligi/tracedroid/logging/Log;->i(Ljava/lang/String;)V

    .line 116
    if-eqz p2, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 117
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->search_in(Ljava/io/File;Z)V

    .line 141
    :cond_7
    :goto_2
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto :goto_1

    .line 118
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_9

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ".pkpass"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-static {v3, v4, v5, v6, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_a

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ".espass"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-static {v3, v4, v5, v6, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/ligi/tracedroid/logging/Log;->i(Ljava/lang/String;)V

    .line 121
    nop

    .line 122
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "baseContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Uri.parse(\"file://\" + file.absolutePath)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lorg/ligi/passandroid/functions/InputStreamProviderKt;->fromURI(Landroid/content/Context;Landroid/net/Uri;)Lorg/ligi/passandroid/model/InputStreamWithSource;

    move-result-object v9

    .line 123
    .local v9, "ins":Lorg/ligi/passandroid/model/InputStreamWithSource;
    new-instance v2, Lorg/ligi/passandroid/ui/SearchSuccessCallback;

    invoke-virtual/range {p0 .. p0}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "baseContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->foundList:Ljava/util/List;

    if-nez v5, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 126
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v6, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 128
    :cond_d
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->notifyManager:Landroid/app/NotificationManager;

    if-nez v8, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 123
    :cond_e
    invoke-direct/range {v2 .. v8}, Lorg/ligi/passandroid/ui/SearchSuccessCallback;-><init>(Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Ljava/util/List;Landroid/support/v4/app/NotificationCompat$Builder;Ljava/io/File;Landroid/app/NotificationManager;)V

    .line 129
    .local v2, "onSuccessCallback":Lorg/ligi/passandroid/ui/SearchSuccessCallback;
    new-instance v8, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;

    if-nez v9, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 130
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v3, "baseContext"

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 132
    move-object v0, v2

    check-cast v0, Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    move-object v12, v0

    .line 133
    new-instance v13, Lorg/ligi/passandroid/ui/SearchPassesIntentService$search_in$spec$1;

    invoke-direct {v13}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$search_in$spec$1;-><init>()V

    check-cast v13, Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    .line 129
    invoke-direct/range {v8 .. v13}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;-><init>(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V

    .line 138
    .local v8, "spec":Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
    sget-object v3, Lorg/ligi/passandroid/ui/UnzipPassController;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassController;

    invoke-virtual {v3, v8}, Lorg/ligi/passandroid/ui/UnzipPassController;->processInputStream(Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 139
    .end local v2    # "onSuccessCallback":Lorg/ligi/passandroid/ui/SearchSuccessCallback;
    .end local v8    # "spec":Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
    .end local v9    # "ins":Lorg/ligi/passandroid/model/InputStreamWithSource;
    :catch_0
    move-exception v14

    .line 140
    .local v14, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v4, "Error in SearchPassesIntentService"

    check-cast v14, Ljava/lang/Throwable;

    .end local v14    # "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    invoke-interface {v3, v4, v14, v5}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto/16 :goto_2
.end method


# virtual methods
.method public final getBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->bus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method public final getPassStore()Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method

.method public final getTracker()Lorg/ligi/passandroid/Tracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->tracker:Lorg/ligi/passandroid/Tracker;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->shouldFinish:Z

    .line 148
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 149
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->foundList:Ljava/util/List;

    .line 47
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->notifyManager:Landroid/app/NotificationManager;

    .line 49
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v3, v7, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 50
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07009e

    invoke-virtual {p0, v3}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 51
    const v4, 0x7f02007f

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 52
    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 53
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 54
    invoke-virtual {v3, v7, v7, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iput-object v3, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->progressNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f02007a

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iput-object v3, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->findNotificationBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 58
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 59
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v3, Lorg/ligi/passandroid/model/PastLocationsStore;

    const-string v4, "preferences"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->tracker:Lorg/ligi/passandroid/Tracker;

    invoke-direct {v3, v2, v4}, Lorg/ligi/passandroid/model/PastLocationsStore;-><init>(Landroid/content/SharedPreferences;Lorg/ligi/passandroid/Tracker;)V

    invoke-virtual {v3}, Lorg/ligi/passandroid/model/PastLocationsStore;->getLocations()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, "path":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, v8}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->search_in(Ljava/io/File;Z)V

    goto :goto_0

    .line 72
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getExternalS\u2026ment.DIRECTORY_DOWNLOADS)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v7}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->search_in(Ljava/io/File;Z)V

    .line 75
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getRootDirectory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v7}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->search_in(Ljava/io/File;Z)V

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getExternalStorageDirectory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v7}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->search_in(Ljava/io/File;Z)V

    .line 81
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getDownloadCacheDirectory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v7}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->search_in(Ljava/io/File;Z)V

    .line 84
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "Environment.getDataDirectory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3, v7}, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->search_in(Ljava/io/File;Z)V

    .line 85
    iget-object v3, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->notifyManager:Landroid/app/NotificationManager;

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    sget-object v4, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->Companion:Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;

    invoke-virtual {v4}, Lorg/ligi/passandroid/ui/SearchPassesIntentService$Companion;->getPROGRESS_NOTIFICATION_ID()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 87
    iget-object v3, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->bus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v4, Lorg/ligi/passandroid/events/ScanFinishedEvent;

    iget-object v5, p0, Lorg/ligi/passandroid/ui/SearchPassesIntentService;->foundList:Ljava/util/List;

    if-nez v5, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-direct {v4, v5}, Lorg/ligi/passandroid/events/ScanFinishedEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 88
    return-void
.end method
