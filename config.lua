Config = Config or {}

-- Configs for Payment and Banking

Config.RenewedBanking = false -- Either put this to true or false if you use Renewed Banking or not
Config.RenewedFinances = false -- Either put this to true or false if you use Renewed Finances or not
Config.RenewedCameras = false -- Either put this to true or false if you use Renewed Cameras or not

Config.BillingCommissions = { -- This is a percentage (0.10) == 10%
    ottos = 0.20,
    catcafe = 0.20,
    belmont = 0.20,
    bahamas = 0.20,
    mcgraffs = 0.20,
}

-- Web hook for camera ( NOT GO PRO )
Config.Webhook = 'https://discord.com/api/webhooks/1031317490896216064/tIPy_uZxUt4xfHXr0V-5PwL97YPjxDxe1DkqQ8QSAeNh0tbG5NAFUkZ4YrJmvzPkwr1j'

-- Item name for pings app ( Having a VPN sends an anonymous ping, else sends the players name)
Config.VPNItem = 'vpn'

-- The garage the vehicle goes to when you sell a car to a player
Config.SellGarage = 'pillboxgarage'

-- How Long Does The Player Have To Accept The Ping - This Is In Seconds
Config.Timeout = 60

-- How Long Does The Blip Remain On The Map - This Is In Seconds
Config.BlipDuration = 30

-- Blip Settings - Find Info @ https://wiki.gtanet.work/index.php?title=Blips
Config.BlipColor = 4
Config.BlipIcon = 280
Config.BlipScale = 0.75

Config.TweetDuration = 8 -- How many hours to load tweets (12 will load the past 12 hours of tweets)
Config.MailDuration = 72 -- How many hours to load Mails (72 will load the past 72 hours of Mails)


Config.RepeatTimeout = 4000
Config.CallRepeats = 10
Config.AllowWalking = true -- Allow walking and driving with phone out


Config.PhoneApplications = {
    ["details"] = {
        app = "details",
        color = "#5db9fc",
        color2 = "#008eff",
        icon = "fas fa-info-circle",
        tooltipText = "Details",
        tooltipPos = "top",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 1,
        Alerts = 0,
    },
    ["contacts"] = {
        app = "contacts",
        color = "#345b7a",
        color2 = "#122445",
        icon = "fas fa-address-book",
        tooltipText = "Contacts",
        tooltipPos = "top",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 2,
        Alerts = 0,
    },
    ["phone"] = {
        app = "phone",
        color = "#51da80",
        color2 = "#009436",
        icon = "fas fa-phone-volume",
        tooltipText = "Phone",
        tooltipPos = "top",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 3,
        Alerts = 0,
    },
    ["whatsapp"] = {
        app = "whatsapp",
        color = "#8bfc76",
        color2 = "#18d016",
        icon = "fas fa-comment",
        tooltipText = "Messages",
        tooltipPos = "top",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 4,
        Alerts = 0,
    },
    ["ping"] = {
        app = "ping",
        color = "#6d10f5",
        color2 = "#4b67ef",
        icon = "fas fa-map-marker-alt",
        tooltipText = "Ping",
        tooltipPos = "top",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 5,
        Alerts = 0,
    },
    ["mail"] = {
        app = "mail",
        color = "#009ee5",
        color2 = "#87d9e7",
        icon = "fas fa-envelope",
        tooltipText = "Mail",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 6,
        Alerts = 0,
    },
    ["advert"] = {
        app = "advert",
        color = "#ff0000",
        color2 = "#f71616",
        icon = "fas fa-ad",
        tooltipText = "Advertisements",
        style = "font-size: 2vh";
        job = false,
        blockedjobs = {},
        slot = 7,
        Alerts = 0,
    },
    ["twitter"] = {
        app = "twitter",
        color = "#151515",
        color2 = "#161616",
        icon = "fab fa-twitter",
        tooltipText = "Twitter",
        tooltipPos = "top",
        style = "color: #2cabe0; font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 8,
        Alerts = 0,
    },
    ["garage"] = {
        app = "garage",
        color = "#ff8077",
        color2 = "#bb345d",
        icon = "fas fa-car",
        tooltipText = "Vehicles",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 9,
        Alerts = 0,
    },--[[ 
    ["debt"] = {
        app = "debt",
        color = "#fdfeff",
        color2 = "#d5e6fa",
        icon = "fas fa-ad",
        tooltipText = "Debt",
        job = false,
        blockedjobs = {},
        slot = 10,
        Alerts = 0,
    }, ]]
    ["wenmo"] = {
        app = "wenmo",
        color = "#56cea5",
        color2 = "#129365",
        --color2 = "#fdbb2d",
        icon = "fas fa-hand-holding-usd",
        tooltipText = "Money Transfer",
        job = false,
        blockedjobs = {},
        slot = 11,
        Alerts = 0,
    },
    ["documents"] = {
        app = "documents",
        color = "#f15ac1",
        color2 = "#aa4edd",
        icon = "fas fa-sticky-note",
        tooltipText = "Documents",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 12,
        Alerts = 0,
    },
    ["houses"] = {
        app = "houses",
        color = "#42a042",
        color2 = "#3f9e4a",
        icon = "fas fa-house-user",
        tooltipText = "Houses",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 13,
        Alerts = 0,
    },--[[ 
    ["crypto"] = {
        app = "crypto",
        color = "#000000",
        color2 = "#000000",
        icon = "fab fa-bitcoin",
        tooltipText = "Crypto",
        style = "font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 14,
        Alerts = 0,
    }, ]]
    ["job"] = {
        app = "job",
        color = "#151515",
        color2 = "#161616",
        icon = "fas fa-id-badge",
        tooltipText = "Job Center",
        style = "color: #78bdfd; font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 15,
        Alerts = 0,
    },
    ["jobcenter"] = {
        app = "jobcenter",
        color = "#151515",
        color2 = "#161616",
        icon = "fas fa-users",
        tooltipText = "Group",
        style = "color: #78bdfd; font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 16,
        Alerts = 0,
    },
    ["employment"] = {
        app = "employment",
        color = "#009ee5",
        color2 = "#87d9e7",
        icon = "fas fa-briefcase",
        tooltipText = "Employment",
        job = false,
        blockedjobs = {},
        slot = 17,
        Alerts = 0,
    },--[[ 
    ["lsbn"] = {
        app = "lsbn",
        color = "#151515",
        color2 = "#161616",
        icon = "fas fa-ad",
        tooltipText = "LSBN",
        job = false,
        blockedjobs = {},
        slot = 18,
        Alerts = 0,
    }, ]]
    ["taxi"] = {
        app = "taxi",
        color = "#ffc900",
        color2 = "#f7c816",
        icon = "fas fa-briefcase",
        tooltipText = "Taxi",
        tooltipPos = "bottom",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 19,
        Alerts = 0,
    },--[[ 
    ["casino"] = {
        app = "casino",
        color = "#000100",
        color2 = "#000100",
        icon = "fas fa-gem",
        tooltipText = "Betting",
        tooltipPos = "bottom",
        style = "font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 20,
        Alerts = 0,
    }, ]]
    ["calculator"] = {
        app = "calculator",
        color = "#c94001",
        color2 = "#9c3100",
        icon = "fas fa-calculator",
        tooltipText = "Calculator",
        tooltipPos = "bottom",
        style = "font-size: 2.5vh";
        job = false,
        blockedjobs = {},
        slot = 21,
        Alerts = 0,
    },
    ["gallery"] = {
        app = "gallery",
        color = "#189ec0",
        color2 = "#14819c",
        icon = "fas fa-images",
        tooltipText = "Gallery",
        tooltipPos = "bottom",
        style = "font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 22,
        Alerts = 0,
    },--[[ 
    ["racing"] = {
        app = "racing",
        color = "#353b48",
        color2 = "#242830",
        icon = "fas fa-flag-checkered",
        tooltipText = "Racing",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 23,
        Alerts = 0,
    },
    ["gopro"] = {
        app = "gopro",
        color = "#008FFF",
        color2 = "#008FFF",
        icon = "fas fa-camera",
        tooltipText = "camera",
        tooltipPos = "top",
        style = "padding-right: .08vh; font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 25,
        Alerts = 0,
    }, 
    ["bank"] = {
        app = "bank",
        color = "#9c88ff",
        color2 = "#8070d5",
        icon = "fas fa-file-contract",
        tooltipText = "Invoices",
        style = "font-size: 2.7vh";
        job = false,
        blockedjobs = {},
        slot = 24,
        Alerts = 0,
    },]]
    ["group-chats"] = {
        app = "group-chats",
        color = "#7289da",
        color2 = "#7289da",
        icon = "fab fa-discord",
        tooltipText = "Discord",
        tooltipPos = "top",
        style = "padding-right: .08vh; font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 26,
        Alerts = 0,
    },
    ["mechanic"] = {
        app = "mechanic",
        color = "#7700ff",
        color2 = "#7816f7",
        icon = "fas fa-wrench",
        tooltipText = "Mechanics",
        tooltipPos = "bottom",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 20,
        Alerts = 0,
    },
    ["recovery"] = {
        app = "recovery",
        color = "#00c3ff",
        color2 = "#16bbf7",
        icon = "fas fa-life-ring",
        tooltipText = "Recovery",
        tooltipPos = "bottom",
        style = "font-size: 3vh";
        job = false,
        blockedjobs = {},
        slot = 25,
        Alerts = 0,
    },
    --[[ 
    ["meos"] = {
        app = "meos",
        color = "#004682",
        color2 = "#00325c",
        icon = "fas fa-ad",
        tooltipText = "MDT",
        job = "police",
        blockedjobs = {},
        slot = 27,
        Alerts = 0,
    }, ]]
}

Config.MaxSlots = 28

Config.JobCenter = {
    [1] = {
        vpn = false,
        label = "Taxi",
        event = "qb-phone:jobcenter:taxi",
    },
    [2] = {
        vpn = false,
        label = "PostOp Worker",
        event = "qb-phone:jobcenter:postop",
    },
    [3] = {
        vpn = false,
        label = "Sanitation Worker",
        event = "qb-phone:jobcenter:sanitation",
    },
    [4] = {
        vpn = true,
        label = "Oxy Run",
        event = "sn-oxyrun:client:chiduong",
    },
    [5] = {
        vpn = true,
        label = "Chop Shop",
        event = "sn-chopshop:client:chiduong",
    }, --[[ 
    [] = {
        vpn = false,
        label = "Towing",
        event = "qb-phone:jobcenter:tow",
    }, ]]--[[ 
    [] = {
        vpn = true,
        label = "House Robbery",
        event = "sn-houserobbery:client:chiduong",
    },]]
}

Config.TaxiJob = {
    {
        Job = "taxi",
    },
}

Config.MechanicJob = {
    {
        Job = "ottos",
    },
}

Config.RecoveryJob = {
    {
        Job = "tow",
    },
}

Config.CryptoCoins = {
    {
        label = 'Shungite', -- label name
        abbrev = 'SHUNG', -- abbreviation
        icon = 'fas fa-caret-square-up', -- icon
        metadata = 'shung', -- meta data name
        value = 50, -- price of coin
        purchase = true -- TRUE ( crypto is purchaseable in the phone) FALSE ( crypto is not purchaseable and only exchangeable )
    },
    {
        label = 'Guinea',
        abbrev = 'GNE',
        icon = 'fas fa-horse-head',
        metadata = 'gne',
        value = 100,
        purchase = false
    },
    {
        label = 'X Coin',
        abbrev = 'XNXX',
        icon = 'fas fa-times',
        metadata = 'xcoin',
        value = 75,
        purchase = true
    },
    {
        label = 'LME',
        abbrev = 'LME',
        icon = 'fas fa-lemon',
        metadata = 'lme',
        value = 150,
        purchase = false
    },
}
