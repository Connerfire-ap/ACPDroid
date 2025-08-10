.class public final Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
.super Ljava/lang/Object;
.source "PassImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ligi/passandroid/model/pass/PassImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeSpan"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;",
        "",
        "from",
        "Lorg/threeten/bp/ZonedDateTime;",
        "to",
        "repeat",
        "Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;",
        "(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;)V",
        "getFrom",
        "()Lorg/threeten/bp/ZonedDateTime;",
        "getRepeat",
        "()Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;",
        "getTo",
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
.field private final from:Lorg/threeten/bp/ZonedDateTime;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final repeat:Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final to:Lorg/threeten/bp/ZonedDateTime;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, 0x7

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;)V
    .locals 0
    .param p1, "from"    # Lorg/threeten/bp/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "to"    # Lorg/threeten/bp/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "repeat"    # Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->from:Lorg/threeten/bp/ZonedDateTime;

    iput-object p2, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->to:Lorg/threeten/bp/ZonedDateTime;

    iput-object p3, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->repeat:Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 41
    check-cast v0, Lorg/threeten/bp/ZonedDateTime;

    move-object p1, v0

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/threeten/bp/ZonedDateTime;

    :goto_0
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_1

    check-cast v1, Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;

    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;-><init>(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;)V

    return-void

    :cond_1
    move-object v1, p3

    goto :goto_1

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public final getFrom()Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->from:Lorg/threeten/bp/ZonedDateTime;

    return-object v0
.end method

.method public final getRepeat()Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->repeat:Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;

    return-object v0
.end method

.method public final getTo()Lorg/threeten/bp/ZonedDateTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;->to:Lorg/threeten/bp/ZonedDateTime;

    return-object v0
.end method
