.class final Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;
.super Lorg/threeten/bp/format/DateTimeFormatStyleProvider;
.source "SimpleDateTimeFormatStyleProvider.java"


# static fields
.field private static final FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/threeten/bp/format/DateTimeFormatStyleProvider;-><init>()V

    return-void
.end method

.method private convertStyle(Lorg/threeten/bp/format/FormatStyle;)I
    .locals 1
    .param p1, "style"    # Lorg/threeten/bp/format/FormatStyle;

    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/threeten/bp/format/FormatStyle;->ordinal()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Ljava/text/DateFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getFormatter(Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/format/FormatStyle;Lorg/threeten/bp/chrono/Chronology;Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;
    .locals 8
    .param p1, "dateStyle"    # Lorg/threeten/bp/format/FormatStyle;
    .param p2, "timeStyle"    # Lorg/threeten/bp/format/FormatStyle;
    .param p3, "chrono"    # Lorg/threeten/bp/chrono/Chronology;
    .param p4, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v7, 0x7c

    .line 65
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 66
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Date and Time style must not both be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lorg/threeten/bp/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "key":Ljava/lang/String;
    sget-object v5, Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "cached":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 71
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 72
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to convert DateFormat to DateTimeFormatter"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_1
    check-cast v0, Lorg/threeten/bp/format/DateTimeFormatter;

    .line 90
    .end local v0    # "cached":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 77
    .restart local v0    # "cached":Ljava/lang/Object;
    :cond_2
    if-eqz p1, :cond_4

    .line 78
    if-eqz p2, :cond_3

    .line 79
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;->convertStyle(Lorg/threeten/bp/format/FormatStyle;)I

    move-result v5

    invoke-direct {p0, p2}, Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;->convertStyle(Lorg/threeten/bp/format/FormatStyle;)I

    move-result v6

    invoke-static {v5, v6, p4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .line 86
    .local v1, "dateFormat":Ljava/text/DateFormat;
    :goto_1
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_5

    .line 87
    check-cast v1, Ljava/text/SimpleDateFormat;

    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "pattern":Ljava/lang/String;
    new-instance v5, Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    invoke-direct {v5}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v5, v4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Lorg/threeten/bp/format/DateTimeFormatterBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Lorg/threeten/bp/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Lorg/threeten/bp/format/DateTimeFormatter;

    move-result-object v2

    .line 89
    .local v2, "formatter":Lorg/threeten/bp/format/DateTimeFormatter;
    sget-object v5, Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 90
    goto :goto_0

    .line 81
    .end local v2    # "formatter":Lorg/threeten/bp/format/DateTimeFormatter;
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;->convertStyle(Lorg/threeten/bp/format/FormatStyle;)I

    move-result v5

    invoke-static {v5, p4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .restart local v1    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_1

    .line 84
    .end local v1    # "dateFormat":Ljava/text/DateFormat;
    :cond_4
    invoke-direct {p0, p2}, Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;->convertStyle(Lorg/threeten/bp/format/FormatStyle;)I

    move-result v5

    invoke-static {v5, p4}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .restart local v1    # "dateFormat":Ljava/text/DateFormat;
    goto :goto_1

    .line 92
    :cond_5
    sget-object v5, Lorg/threeten/bp/format/SimpleDateTimeFormatStyleProvider;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    const-string v6, ""

    invoke-interface {v5, v3, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to convert DateFormat to DateTimeFormatter"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
