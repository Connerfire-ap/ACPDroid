.class public final Lorg/ligi/passandroid/model/pass/PassImpl;
.super Ljava/lang/Object;
.source "PassImpl.kt"

# interfaces
.implements Lorg/ligi/passandroid/model/pass/Pass;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/model/pass/PassImpl$HexColor;,
        Lorg/ligi/passandroid/model/pass/PassImpl$TimeRepeat;,
        Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;,
        Lorg/ligi/passandroid/model/pass/PassImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 J2\u00020\u0001:\u0004JKLMB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010C\u001a\u0004\u0018\u00010D2\u0006\u0010E\u001a\u00020F2\u0008\u0008\u0001\u0010G\u001a\u00020\u0003H\u0016J\u0012\u0010H\u001a\u0004\u0018\u00010\u00032\u0006\u0010E\u001a\u00020FH\u0016J\u0008\u0010I\u001a\u00020\u0003H\u0016R\u001e\u0010\u0005\u001a\u00020\u00068\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u0004R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\r\"\u0004\u0008\u0011\u0010\u0004R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\r\"\u0004\u0008 \u0010\u0004R\u001e\u0010!\u001a\u0004\u0018\u00010\u00038VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\r\"\u0004\u0008#\u0010\u0004R \u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\rR \u0010,\u001a\u0008\u0012\u0004\u0012\u00020.0-X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010(\"\u0004\u00080\u0010*R\u001c\u00101\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\r\"\u0004\u00083\u0010\u0004R\u001c\u00104\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\r\"\u0004\u00086\u0010\u0004R\u001a\u00107\u001a\u000208X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R \u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00190-X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010(\"\u0004\u0008?\u0010*R\u001c\u0010@\u001a\u0004\u0018\u00010\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\r\"\u0004\u0008B\u0010\u0004\u00a8\u0006N"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/pass/PassImpl;",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "id",
        "",
        "(Ljava/lang/String;)V",
        "accentColor",
        "",
        "getAccentColor",
        "()I",
        "setAccentColor",
        "(I)V",
        "app",
        "getApp",
        "()Ljava/lang/String;",
        "setApp",
        "authToken",
        "getAuthToken",
        "setAuthToken",
        "barCode",
        "Lorg/ligi/passandroid/model/pass/BarCode;",
        "getBarCode",
        "()Lorg/ligi/passandroid/model/pass/BarCode;",
        "setBarCode",
        "(Lorg/ligi/passandroid/model/pass/BarCode;)V",
        "calendarTimespan",
        "Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;",
        "getCalendarTimespan",
        "()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;",
        "setCalendarTimespan",
        "(Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V",
        "creator",
        "getCreator",
        "setCreator",
        "description",
        "getDescription",
        "setDescription",
        "fields",
        "",
        "Lorg/ligi/passandroid/model/pass/PassField;",
        "getFields",
        "()Ljava/util/List;",
        "setFields",
        "(Ljava/util/List;)V",
        "getId",
        "locations",
        "",
        "Lorg/ligi/passandroid/model/pass/PassLocation;",
        "getLocations",
        "setLocations",
        "passIdent",
        "getPassIdent",
        "setPassIdent",
        "serial",
        "getSerial",
        "setSerial",
        "type",
        "Lorg/ligi/passandroid/model/pass/PassType;",
        "getType",
        "()Lorg/ligi/passandroid/model/pass/PassType;",
        "setType",
        "(Lorg/ligi/passandroid/model/pass/PassType;)V",
        "validTimespans",
        "getValidTimespans",
        "setValidTimespans",
        "webServiceURL",
        "getWebServiceURL",
        "setWebServiceURL",
        "getBitmap",
        "Landroid/graphics/Bitmap;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "passBitmap",
        "getSource",
        "toString",
        "Companion",
        "HexColor",
        "TimeRepeat",
        "TimeSpan",
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
.field public static final Companion:Lorg/ligi/passandroid/model/pass/PassImpl$Companion;

# The value of this static final field might be set in the static constructor
.field private static final FILETYPE_IMAGES:Ljava/lang/String; = ".png"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private accentColor:I
    .annotation runtime Lorg/ligi/passandroid/model/pass/PassImpl$HexColor;
    .end annotation
.end field

.field private app:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private authToken:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private barCode:Lorg/ligi/passandroid/model/pass/BarCode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private calendarTimespan:Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private creator:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassLocation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private passIdent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private serial:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Lorg/ligi/passandroid/model/pass/PassType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private validTimespans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private webServiceURL:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/ligi/passandroid/model/pass/PassImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/pass/PassImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/model/pass/PassImpl;->Companion:Lorg/ligi/passandroid/model/pass/PassImpl$Companion;

    .line 87
    const-string v0, ".png"

    sput-object v0, Lorg/ligi/passandroid/model/pass/PassImpl;->FILETYPE_IMAGES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->id:Ljava/lang/String;

    .line 22
    sget-object v0, Lorg/ligi/passandroid/model/pass/PassType;->EVENT:Lorg/ligi/passandroid/model/pass/PassType;

    iput-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->type:Lorg/ligi/passandroid/model/pass/PassType;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->validTimespans:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->fields:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->locations:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getFILETYPE_IMAGES$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lorg/ligi/passandroid/model/pass/PassImpl;->FILETYPE_IMAGES:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAccentColor()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->accentColor:I

    return v0
.end method

.method public getApp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->app:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBarCode()Lorg/ligi/passandroid/model/pass/BarCode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->barCode:Lorg/ligi/passandroid/model/pass/BarCode;

    return-object v0
.end method

.method public getBitmap(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "passBitmap"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string v3, "passStore"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "passBitmap"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    nop

    .line 63
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/pass/PassImpl;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/ligi/passandroid/model/PassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lorg/ligi/passandroid/model/pass/PassImpl;->Companion:Lorg/ligi/passandroid/model/pass/PassImpl$Companion;

    invoke-virtual {v6}, Lorg/ligi/passandroid/model/pass/PassImpl$Companion;->getFILETYPE_IMAGES()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    .local v2, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 68
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-object v3

    .line 65
    :catch_0
    move-exception v1

    .local v1, "expectedInSomeCases_willJustReturnNull":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .line 66
    goto :goto_0

    .line 67
    .end local v1    # "expectedInSomeCases_willJustReturnNull":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/OutOfMemoryError;
    move-object v3, v4

    .line 68
    goto :goto_0
.end method

.method public getCalendarTimespan()Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->calendarTimespan:Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->description:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 32
    const-string v0, ""

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->description:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassField;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassLocation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getPassIdent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->passIdent:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getSource(Lorg/ligi/passandroid/model/PassStore;)Ljava/lang/String;
    .locals 5
    .param p1, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const-string v1, "passStore"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/pass/PassImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/ligi/passandroid/model/PassStore;->getPathForID(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "source.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v4, 0x2000

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/InputStream;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v1, v2

    check-cast v1, Ljava/io/Reader;

    instance-of v2, v1, Ljava/io/BufferedReader;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/io/BufferedReader;

    :goto_0
    check-cast v1, Ljava/io/Reader;

    invoke-static {v1}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_1
    return-object v1

    .line 77
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v2

    goto :goto_0

    .line 79
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getType()Lorg/ligi/passandroid/model/pass/PassType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->type:Lorg/ligi/passandroid/model/pass/PassType;

    return-object v0
.end method

.method public getValidTimespans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->validTimespans:Ljava/util/List;

    return-object v0
.end method

.method public getWebServiceURL()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->webServiceURL:Ljava/lang/String;

    return-object v0
.end method

.method public setAccentColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .prologue
    .line 27
    iput p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->accentColor:I

    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->app:Ljava/lang/String;

    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->authToken:Ljava/lang/String;

    return-void
.end method

.method public setBarCode(Lorg/ligi/passandroid/model/pass/BarCode;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/model/pass/BarCode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->barCode:Lorg/ligi/passandroid/model/pass/BarCode;

    return-void
.end method

.method public setCalendarTimespan(Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->calendarTimespan:Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->creator:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->description:Ljava/lang/String;

    return-void
.end method

.method public setFields(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassField;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->fields:Ljava/util/List;

    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->locations:Ljava/util/List;

    return-void
.end method

.method public setPassIdent(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->passIdent:Ljava/lang/String;

    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->serial:Ljava/lang/String;

    return-void
.end method

.method public setType(Lorg/ligi/passandroid/model/pass/PassType;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/ligi/passandroid/model/pass/PassType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->type:Lorg/ligi/passandroid/model/pass/PassType;

    return-void
.end method

.method public setValidTimespans(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->validTimespans:Ljava/util/List;

    return-void
.end method

.method public setWebServiceURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    iput-object p1, p0, Lorg/ligi/passandroid/model/pass/PassImpl;->webServiceURL:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/pass/PassImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
